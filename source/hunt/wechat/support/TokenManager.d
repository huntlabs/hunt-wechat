module hunt.wechat.support.TokenManager;

import hunt.collection.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

import hunt.logging;


import hunt.wechat.api.TokenAPI;
import hunt.wechat.bean.token.Token;

/**
 * TokenManager token 自动刷新
 * 
 *
 */
class TokenManager{

	
	private static ScheduledExecutorService scheduledExecutorService;

	private static Map!(string,string) tokenMap = new ConcurrentHashMap!(string,string)();

	private static Map!(string,ScheduledFuture) futureMap = new ConcurrentHashMap!(string, ScheduledFuture)();

	private static int poolSize = 2;
	
	private static bool daemon = Boolean.TRUE;
	
	private static string firestAppid;

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
		TokenManager.poolSize = poolSize;
	}
	
	/**
	 * 设置线程方式
	 * @param daemon daemon
	 */
	public static void setDaemon(bool daemon) {
		TokenManager.daemon = daemon;
	}
	
	/**
	 * 初始化token 刷新，每118分钟刷新一次。
	 * @param appid appid
	 * @param secret secret
	 */
	public static void init(final string appid,final string secret){
		init(appid, secret, 0, 60*118);
	}

	/**
	 * 初始化token 刷新，每118分钟刷新一次。
	 * @param appid appid
	 * @param secret secret
	 * @param initialDelay 首次执行延迟（秒）
	 * @param delay 执行间隔（秒）
	 */
	public static void init(final string appid,final string secret,int initialDelay,int delay){
		if(scheduledExecutorService == null){
			initScheduledExecutorService();
		}
		if(firestAppid == null){
			firestAppid = appid;
		}
		if(futureMap.containsKey(appid)){
			futureMap.get(appid).cancel(true);
		}
		//立即执行一次
		if(initialDelay == 0){
			doRun(appid, secret);
		}
		ScheduledFuture scheduledFuture =  scheduledExecutorService.scheduleWithFixedDelay(new class Runnable {
			override
			public void run() {
				doRun(appid, secret);
			}
		},initialDelay == 0 ? delay : initialDelay,delay,TimeUnit.SECONDS);
		futureMap.put(appid, scheduledFuture);
		logger.info("appid:{}",appid);
	}
	
	private static void doRun(final string appid, final string secret) {
		try {
			Token token = TokenAPI.token(appid,secret);
			tokenMap.put(appid,token.getAccess_token());
			logger.info("ACCESS_TOKEN refurbish with appid:{}",appid);
		} catch (Exception e) {
			logger.error("ACCESS_TOKEN refurbish error with appid:{}",appid);
			logger.error("", e);
		}
	}

	/**
	 * 取消 token 刷新
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
		if(futureMap.containsKey(appid)){
			futureMap.get(appid).cancel(true);
			logger.info("destroyed appid:{}",appid);
		}
	}

	/**
	 * 获取 access_token
	 * @param appid appid
	 * @return token
	 */
	public static string getToken(string appid){
		return tokenMap.get(appid);
	}

	/**
	 * 获取第一个appid 的 access_token
	 * 适用于单一微信号
	 * @return token
	 */
	public static string getDefaultToken(){
		return tokenMap.get(firestAppid);
	}

}
