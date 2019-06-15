module hunt.wechat.bean.token.Token;

import hunt.wechat.bean.BaseResult;

class Token : BaseResult {

	private string access_token;
	private int expires_in;

	public string getAccess_token() {
		return access_token;
	}

	public void setAccess_token(string accessToken) {
		access_token = accessToken;
	}

	public int getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(int expiresIn) {
		expires_in = expiresIn;
	}

}
