module hunt.wechat.api.API;

/**
 * API 设置
 * 
 * 
 * 2.8.6
 * 
 * @author LiYi
 *
 */
class API {

	private enum string KEY_JOIN = "#";

	private static APIHandler apiHandler;

	/**
	 * 判断参数表现形式
	 * 
	 * @param keyParam
	 *            keyParam
	 * @return bool
	 */
	private static bool isKeyParam(string keyParam) {
		// ACCESS_TOKEN_LENGTH 138
		// TICKET_LENGTH 86
		// KEY_MAX_LENGTH 18+1+18
		return keyParam != null && keyParam.length() < 50;
	}

	/**
	 * keys 组合
	 * 
	 * @param component_appid
	 *            component_appid
	 * @param authorizer_appid
	 *            authorizer_appid
	 * @return keyParam
	 */
	public static string keyParam(string component_appid, string authorizer_appid) {
		return string.format("%s%s%s", component_appid, KEY_JOIN, authorizer_appid);
	}

	/**
	 * 获取access_token
	 * 
	 * @param key
	 *            key
	 * @return access_token
	 */
	public static string accessToken(string key) {
		if (isKeyParam(key)) {
			string[] keys = key.split(KEY_JOIN);
			if (keys.length == 2) {
				return apiHandler.accessToken(keys[0], keys[1]);
			} else if (keys.length == 1) {
				return apiHandler.accessToken(keys[0]);
			}
		}
		return key;
	}

	/**
	 * 获取component_access_token
	 * 
	 * @param key
	 *            key
	 * @return component_access_token
	 */
	public static string componentAccessToken(string key) {
		if (isKeyParam(key)) {
			return apiHandler.componentAccessToken(key);
		}
		return key;
	}

	/**
	 * 获取ticket
	 * 
	 * @param key
	 *            key
	 * @param type
	 *            类型 jsapi,wx_card
	 * @return ticket
	 */
	public static string ticket(string key, string type) {
		if (isKeyParam(key)) {
			string[] keys = key.split(KEY_JOIN);
			if (keys.length == 2) {
				return apiHandler.ticket(keys[0], keys[1], type);
			} else if (keys.length == 1) {
				return apiHandler.ticket(keys[0], type);
			}
		}
		return key;
	}

	public static APIHandler getApiHandler() {
		return apiHandler;
	}

	public static void setApiHandler(APIHandler apiHandler) {
		API.apiHandler = apiHandler;
	}

	interface APIHandler {

		public string accessToken(string component_appid, string authorizer_appid);

		public string accessToken(string appid);

		public string componentAccessToken(string component_appid);

		public string ticket(string component_appid, string authorizer_appid, string type);

		public string ticket(string appid, string type);
	}

}
