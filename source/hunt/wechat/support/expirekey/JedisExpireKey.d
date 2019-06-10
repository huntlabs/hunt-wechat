module hunt.wechat.support.expirekey.JedisExpireKey;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import hunt.wechat.support.ExpireKey;

public class JedisExpireKey : ExpireKey {
	
	private static Logger logger = LoggerFactory.getLogger(JedisExpireKey.class);

	private JedisPool pool;

	private static final string DEFAULT_VALUE = "";

	private string perfix = "WP_ExpireKey_";

	public JedisExpireKey() {
	}

	public JedisExpireKey(JedisPool pool) {
		this.pool = pool;
	}

	public void setPerfix(string perfix) {
		this.perfix = perfix;
	}

	public void setPool(JedisPool pool) {
		this.pool = pool;
	}

	override
	public bool add(string key, int expire) {
		Jedis jedis = null;
		try {
			jedis = pool.getResource();
			jedis.setex(perfix + key, expire, DEFAULT_VALUE);
			return true;
		} catch (Exception e) {
			logger.error("", e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		return false;
	}

	override
	public bool add(string key) {
		return add(key, DEFAULT_EXPIRE);
	}

	override
	public bool exists(string key) {
		Jedis jedis = null;
		try {
			jedis = pool.getResource();
			return jedis.exists(perfix + key);
		} catch (Exception e) {
			logger.error("", e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		return false;
	}

}
