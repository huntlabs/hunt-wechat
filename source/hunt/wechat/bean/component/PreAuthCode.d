module hunt.wechat.bean.component.PreAuthCode;

import hunt.wechat.bean.BaseResult;

public class PreAuthCode : BaseResult{

	private string pre_auth_code;

	private int expires_in;

	public string getPre_auth_code() {
		return pre_auth_code;
	}
	public void setPre_auth_code(string pre_auth_code) {
		this.pre_auth_code = pre_auth_code;
	}
	public int getExpires_in() {
		return expires_in;
	}
	public void setExpires_in(int expires_in) {
		this.expires_in = expires_in;
	}


}
