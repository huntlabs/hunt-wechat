module hunt.wechat.bean.message.ApiAddTemplateResult;

import hunt.wechat.bean.BaseResult;

class ApiAddTemplateResult : BaseResult{

	private string template_id;

	public string getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(string template_id) {
		this.template_id = template_id;
	}
	
	
}
