module hunt.wechat.bean.wxopen.TemplateAddResult;

import hunt.wechat.bean.BaseResult;

class TemplateAddResult : BaseResult {

	private string template_id;

	public string getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(string template_id) {
		this.template_id = template_id;
	}

}
