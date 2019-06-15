module hunt.wechat.bean.open.OpenResult;

import hunt.wechat.bean.BaseResult;

class OpenResult : BaseResult {

	private string open_appid;

	public string getOpen_appid() {
		return open_appid;
	}

	public void setOpen_appid(string open_appid) {
		this.open_appid = open_appid;
	}

}
