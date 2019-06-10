module hunt.wechat.bean.component.ComponentAccessToken;

import hunt.wechat.bean.BaseResult;

public class ComponentAccessToken : BaseResult{

	private string component_access_token;

	private int expires_in;

	public string getComponent_access_token() {
		return component_access_token;
	}

	public void setComponent_access_token(string component_access_token) {
		this.component_access_token = component_access_token;
	}

	public int getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(int expires_in) {
		this.expires_in = expires_in;
	}


}
