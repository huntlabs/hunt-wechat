module hunt.wechat.support.TicketManager;

import hunt.collection.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

import hunt.logging;


import hunt.wechat.api.TicketAPI;
import hunt.wechat.bean.ticket.Ticket;

/**
 * TicketManager ticket(jsapi | wx_card) 自动刷新
 * 
 *
 */
class TicketManager {
	

	private static ScheduledExecutorService scheduledExecutorService;

	private static Map!(string,string) ticketMap = new ConcurrentHashMap!(string,string)();

	private static Map!(string,ScheduledFuture) futureMap = new ConcurrentHashMap!(string, ScheduledFuture)();

	private static int poolSize = 2;
	
	private static bool daemon = Boolean.TRUE;
	
	private static string firestAppid;
	
	private enum string KEY_JOIN = "__";
	
	/**
	 * 初始化 scheduledExecutorService
	 */
	private static void initScheduledExecutorService(){
		logger.info("daemon:{},poolSize:{}",daemon,poolSize);
		scheduledExecutorService =  Executors.newScheduledThreadPool(poolSize,new class ThreadFactory {

			override
			public Thread newThread(Runnable arg0) {
				Thread thread = Executors.defaultThreadFactory().newThread(arg0);
				//设置守护线程
				thread.setDaemon(daemon);
				return thread;
			}
		});
	}

	/**
	 * 设置线程池
	 * @param poolSize poolSize
	 */
	public static void setPoolSize(int poolSize){
		TicketManager.poolSize = poolSize;
	}

	/**
	 * 设置线程方式
	 * @param daemon daemon
	 */
	public static void setDaemon(bool daemon) {
		TicketManager.daemon = daemon;
	}
	
	/**
	 * 初始化ticket(jsapi) 刷新，每119分钟刷新一次。
	 * 依赖TokenManager
	 * @param appid appid
	 */
	public static void init(final string appid){
		init(appid,0,60*119);
	}
	
	/**
	 * 初始化ticket 刷新，每119分钟刷新一次。
	 * 依赖TokenManager
	 * @since 2.8.2 
	 * @param appid appid
	 * @param types [jsapi,wx_card]
	 */
	public static void init(final string appid,string types){
		init(appid,0,60*119,types);
	}
	
	/**
	 * 初始化ticket(jsapi) 刷新 
	 * 依赖TokenManager
	 * @since 2.6.1
	 * @param appid appid
	 * @param initialDelay 首次执行延迟（秒）
	 * @param delay 执行间隔（秒）
	 */
	public static void init(final string appid,int initialDelay,int delay){
		init(appid,initialDelay, delay,"jsapi");
	}
	
	/**
	 * 初始化ticket 刷新
	 * 依赖TokenManager
	 * @since 2.8.2
	 * @param appid appid
	 * @param initialDelay 首次执行延迟（秒）
	 * @param delay 执行间隔（秒）
	 * @param types ticket 类型  [jsapi,wx_card]
	 */
	public static void init(final string appid,int initialDelay,int delay,string[] types...){
		if(firestAppid == null){
			firestAppid = appid;
		}
		foreach( string type ; types){
			final string key = appid + KEY_JOIN + type;
			if(scheduledExecutorService == null){
				initScheduledExecutorService();
			}
			if(futureMap.containsKey(key)){
				futureMap.get(key).cancel(true);
			}
			//立即执行一次
			if(initialDelay == 0){
				doRun(appid, type, key);
			}
			ScheduledFuture scheduledFuture =  scheduledExecutorService.scheduleWithFixedDelay(new class Runnable {
				override
				public void run() {
					doRun(appid, type, key);
				}
			},initialDelay == 0 ? delay : initialDelay,delay,TimeUnit.SECONDS);
			futureMap.put(key,scheduledFuture);
		}
	}
	
	private static void doRun(final string appid, final string type, final string key) {
		try {
			string access_token = TokenManager.getToken(appid);
			Ticket ticket = TicketAPI.ticketGetticket(access_token,type);
			ticketMap.put(key,ticket.getTicket());
			logger.info("TICKET refurbish with appid:{} type:{}",appid,type);
		} catch (Exception e) {
			logger.error("TICKET refurbish error with appid:{} type:{}",appid,type);
			logger.error("", e);
		}
	}

	/**
	 * 取消 ticket 刷新
	 */
	public static void destroyed(){
		scheduledExecutorService.shutdownNow();
		logger.info("destroyed");
	}
	
	/**
	 * 取消刷新
	 * @param appid appid
	 */
	public static void destroyed(string appid){
		destroyed(appid,"jsapi","wx_card");
	}
	
	/**
	 * 取消刷新
	 * @param appid appid
	 * @param types ticket 类型  [jsapi,wx_card]
	 */
	public static void destroyed(string appid,string[] types...){
		foreach(string type ; types){
			string key = appid + KEY_JOIN + type;
			if(futureMap.containsKey(key)){
				futureMap.get(key).cancel(true);
				logger.info("destroyed appid:{} type:{}",appid,type);
			}
		}
	}

	/**
	 * 获取 ticket(jsapi)
	 * @param appid appid
	 * @return ticket
	 */
	public static string getTicket(final string appid){
		return getTicket(appid ,"jsapi");
	}
	
	
	/**
	 * 获取 ticket
	 * @param appid appid
	 * @param type jsapi or wx_card
	 * @return ticket
	 */
	public static string getTicket(final string appid,string type){
		return ticketMap.get(appid + KEY_JOIN + type);
	}
	

	/**
	 * 获取第一个appid 的第一个类型的 ticket
	 * 适用于单一微信号
	 * @return ticket
	 */
	public static string getDefaultTicket(){
		return ticketMap.get(firestAppid);
	}

}
