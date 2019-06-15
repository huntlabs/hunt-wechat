module hunt.wechat.bean.user.UserTagGetResult;

import hunt.wechat.bean.BaseResult;

class UserTagGetResult : BaseResult {

	private Integer count;

	private Data data;

	private string next_openid;

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Data getData() {
		return data;
	}

	public void setData(Data data) {
		this.data = data;
	}

	public string getNext_openid() {
		return next_openid;
	}

	public void setNext_openid(string next_openid) {
		this.next_openid = next_openid;
	}

	static class Data {

		private string[] openid;

		public string[] getOpenid() {
			return openid;
		}

		public void setOpenid(string[] openid) {
			this.openid = openid;
		}
	}
}
