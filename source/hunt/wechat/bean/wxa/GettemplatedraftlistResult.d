module hunt.wechat.bean.wxa.GettemplatedraftlistResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GettemplatedraftlistResult : BaseResult {

	private List<TemplateItem> drafttemplate_list;

	public List<TemplateItem> getDrafttemplate_list() {
		return drafttemplate_list;
	}

	public void setDrafttemplate_list(List<TemplateItem> drafttemplate_list) {
		this.drafttemplate_list = drafttemplate_list;
	}

}
