module hunt.wechat.bean.component.AuthorizerAccessToken;

import hunt.wechat.bean.BaseResult;

class AuthorizerAccessToken : BaseResult {

	private string authorizer_access_token;

	private Integer expires_in;

	private string authorizer_refresh_token;

	public string getAuthorizer_access_token() {
		return authorizer_access_token;
	}

	public void setAuthorizer_access_token(string authorizer_access_token) {
		this.authorizer_access_token = authorizer_access_token;
	}

	public Integer getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(Integer expires_in) {
		this.expires_in = expires_in;
	}

	public string getAuthorizer_refresh_token() {
		return authorizer_refresh_token;
	}

	public void setAuthorizer_refresh_token(string authorizer_refresh_token) {
		this.authorizer_refresh_token = authorizer_refresh_token;
	}

}
