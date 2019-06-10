module hunt.wechat.support.ExpireKey;

/**
 * key 过期
 * @author LiYi
 *
 */
public interface ExpireKey {

	//12 s
	public static final Integer DEFAULT_EXPIRE = 12;

	/**
	 * 添加key
	 * @param key key
	 * @param expire 有效时间（秒）
	 * @return bool
	 */
	public bool add(string key,int expire);

	/**
	 * 添加key
	 * @param key key
	 * @return bool
	 */
	public bool add(string key);

	/**
	 * 判断key是否存在
	 * @param key key
	 * @return bool
	 */
	public bool exists(string key);

}
