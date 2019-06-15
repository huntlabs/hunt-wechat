module hunt.wechat.bean.wxopen.TemplateLibraryGetResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

class TemplateLibraryGetResult : BaseResult {

	private string id;

	private string title;

	private List!(TemplateLibraryGetItem) keyword_list;

	public string getId() {
		return id;
	}

	public void setId(string id) {
		this.id = id;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public List!(TemplateLibraryGetItem) getKeyword_list() {
		return keyword_list;
	}

	public void setKeyword_list(List!(TemplateLibraryGetItem) keyword_list) {
		this.keyword_list = keyword_list;
	}

}
