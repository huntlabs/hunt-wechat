module hunt.wechat.support.expirekey.DefaultExpireKey;

import hunt.collection.ArrayList;
import hunt.collection.List;
import hunt.collection.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import hunt.wechat.support.ExpireKey;

public class DefaultExpireKey : ExpireKey{
	
	private static final Logger logger = LoggerFactory.getLogger(DefaultExpireKey.class);

	private Map<string,Integer> map = new ConcurrentHashMap<string,Integer>();

	private Integer period = 60;

	private ScheduledExecutorService scheduledExecutorService;

	public DefaultExpireKey(){
		cleanExpireKey();
	}

	/**
	 *
	 * @param period 清理key 间隔时间，默认60秒。
	 */
	public DefaultExpireKey(int period){
		this.period = period;
		cleanExpireKey();
	}

	private void cleanExpireKey(){
		if(scheduledExecutorService != null){
			scheduledExecutorService.shutdownNow();
		}
		//守护线程 自动清理过期key ，间隔时间60秒
		scheduledExecutorService = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {

			override
			public Thread newThread(Runnable arg0) {
				Thread thread = Executors.defaultThreadFactory().newThread(arg0);
				thread.setDaemon(true);
				return thread;
			}
		});

		scheduledExecutorService.scheduleWithFixedDelay(new Runnable() {
			override
			public void run() {
				logger.debug("in clean");
				List<string> removeKey = new ArrayList<string>();
				for(string key : map.keySet()){
					Integer value = map.get(key);
					if(value!=null&&value <= System.currentTimeMillis()/1000){
						removeKey.add(key);
					}
				}
				for(string key : removeKey){
					map.remove(key);
				}
				logger.debug("clean {} keys",removeKey.size());
			}
		},10,period,TimeUnit.SECONDS);
	}


	override
	public bool add(string key, int expire) {
		map.put(key,(int)(System.currentTimeMillis()/1000)+expire);
		return false;
	}

	override
	public bool add(string key) {
		return add(key,DEFAULT_EXPIRE);
	}

	override
	public bool exists(string key) {
		Integer value = map.get(key);
		if(value == null){
			return false;
		}else{
			return value > System.currentTimeMillis()/1000;
		}
	}

}
