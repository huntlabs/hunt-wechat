module hunt.wechat.bean.wxa.GetPageResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GetPageResult : BaseResult {

	private List<string> page_list;

	public List<string> getPage_list() {
		return page_list;
	}

	public void setPage_list(List<string> page_list) {
		this.page_list = page_list;
	}

}
