module hunt.wechat.bean.sns.Jscode2sessionResult;

import hunt.wechat.bean.BaseResult;

class Jscode2sessionResult : BaseResult {

	private string openid;

	private string session_key;

	private Integer expires_in;

	private string unionid; // 2.8.16

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getSession_key() {
		return session_key;
	}

	public void setSession_key(string session_key) {
		this.session_key = session_key;
	}

	public Integer getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(Integer expires_in) {
		this.expires_in = expires_in;
	}

	public string getUnionid() {
		return unionid;
	}

	public void setUnionid(string unionid) {
		this.unionid = unionid;
	}

}
