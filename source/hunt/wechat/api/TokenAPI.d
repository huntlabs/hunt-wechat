module hunt.wechat.api.TokenAPI;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;

import hunt.wechat.bean.token.Token;
import hunt.wechat.client.LocalHttpClient;

/**
 * ACCESS_TOKEN API
 * 
 *
 */
class TokenAPI : BaseAPI{

	/**
	 * 获取access_token
	 * @param appid appid
	 * @param secret secret
	 * @return Token
	 */
	public static Token token(string appid,string secret){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI + "/cgi-bin/token")
				.addParameter("grant_type","client_credential")
				.addParameter("appid", appid)
				.addParameter("secret", secret)
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(Token));
	}

}
