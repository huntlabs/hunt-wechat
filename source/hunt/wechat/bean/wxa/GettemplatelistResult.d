module hunt.wechat.bean.wxa.GettemplatelistResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GettemplatelistResult : BaseResult {

	private List<TemplateItem> template_list;

	public List<TemplateItem> getTemplate_list() {
		return template_list;
	}

	public void setTemplate_list(List<TemplateItem> template_list) {
		this.template_list = template_list;
	}

}
