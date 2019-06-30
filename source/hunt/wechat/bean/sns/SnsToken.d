module hunt.wechat.bean.sns.SnsToken;

import hunt.wechat.bean.BaseResult;

class SnsToken : BaseResult{

	private string access_token;

	private Integer expires_in;

	private string refresh_token;

	private string openid;

	private string _scope;
	
	private string unionid;

	public string getAccess_token() {
		return access_token;
	}

	public void setAccess_token(string accessToken) {
		access_token = accessToken;
	}

	public Integer getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(Integer expiresIn) {
		expires_in = expiresIn;
	}

	public string getRefresh_token() {
		return refresh_token;
	}

	public void setRefresh_token(string refreshToken) {
		refresh_token = refreshToken;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getScope() {
		return _scope;
	}

	public void setScope(string _scope) {
		this._scope = _scope;
	}

	public string getUnionid() {
		return unionid;
	}

	public void setUnionid(string unionid) {
		this.unionid = unionid;
	}

}
