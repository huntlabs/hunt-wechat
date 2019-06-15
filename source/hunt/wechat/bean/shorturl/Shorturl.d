module hunt.wechat.bean.shorturl.Shorturl;

import hunt.wechat.bean.BaseResult;

class Shorturl : BaseResult{

	private string short_url;

	public string getShort_url() {
		return short_url;
	}

	public void setShort_url(string short_url) {
		this.short_url = short_url;
	}
}
