module hunt.wechat.bean.component.AuthorizerOption;

import hunt.wechat.bean.BaseResult;

public class AuthorizerOption : BaseResult {

	private string authorizer_appid;

	private string option_name;

	private string option_value;

	public string getAuthorizer_appid() {
		return authorizer_appid;
	}

	public void setAuthorizer_appid(string authorizer_appid) {
		this.authorizer_appid = authorizer_appid;
	}

	public string getOption_name() {
		return option_name;
	}

	public void setOption_name(string option_name) {
		this.option_name = option_name;
	}

	public string getOption_value() {
		return option_value;
	}

	public void setOption_value(string option_value) {
		this.option_value = option_value;
	}

}
