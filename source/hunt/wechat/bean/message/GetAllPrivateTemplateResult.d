module hunt.wechat.bean.message.GetAllPrivateTemplateResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GetAllPrivateTemplateResult : BaseResult{

	private List<PrivateTemplate> template_list;

	public List<PrivateTemplate> getTemplate_list() {
		return template_list;
	}

	public void setTemplate_list(List<PrivateTemplate> template_list) {
		this.template_list = template_list;
	}
}
