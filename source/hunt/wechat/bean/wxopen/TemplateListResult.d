module hunt.wechat.bean.wxopen.TemplateListResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

class TemplateListResult : BaseResult {

	private List!(TemplateListItem) list;

	public List!(TemplateListItem) getList() {
		return list;
	}

	public void setList(List!(TemplateListItem) list) {
		this.list = list;
	}

}
