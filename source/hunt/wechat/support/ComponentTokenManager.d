module hunt.wechat.support.ComponentTokenManager;

import hunt.wechat.bean.component.ApiQueryAuthResult;

/**
 * ComponentTokenManager 第三方平台token 管理
 * 
 * @author LiYi
 * @since 2.8.20
 */
public interface ComponentTokenManager {

	/**
	 * 获取 component_access_token
	 * 
	 * @param component_appid component_appid
	 * @return componentAccessToken
	 */
	string getComponentAccessToken(string component_appid);

	/**
	 * 获取 component_access_token <br>
	 * 适用于单一第三方平台环境
	 * 
	 * @return componentAccessToken
	 */
	string getComponentAccessToken();

	/**
	 * 获取 authorizer_access_token
	 * 
	 * @param component_appid component_appid
	 * @param authorizer_appid authorizer_appid
	 * @return authorizerAccessToken
	 */
	string getAuthorizerAccessToken(string component_appid, string authorizer_appid);

	/**
	 * 获取 authorizer_access_token<br>
	 * 适用于单一第三方平台环境
	 * 
	 * @param authorizer_appid authorizer_appid
	 * @return authorizerAccessToken
	 */
	string getAuthorizerAccessToken(string authorizer_appid);

	/**
	 * 刷新 component_access_token
	 * 
	 * @param component_appid component_appid
	 * @param component_appsecret component_appsecret
	 * @param component_verify_ticket component_verify_ticket
	 */
	void component_verify_ticket(string component_appid, string component_appsecret, string component_verify_ticket);

	/**
	 * 授权事件
	 * 
	 * @param component_appid component_appid
	 * @param authorizationCode authorizationCode
	 * @return ApiQueryAuthResult
	 */
	ApiQueryAuthResult authorized(string component_appid, string authorizationCode);

	/**
	 * 取消授权事件
	 * 
	 * @param component_appid component_appid
	 * @param authorizer_appid authorizer_appid
	 */
	void unauthorized(string component_appid, string authorizer_appid);
}
