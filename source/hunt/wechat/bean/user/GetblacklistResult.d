module hunt.wechat.bean.user.GetblacklistResult;

import hunt.wechat.bean.BaseResult;

class GetblacklistResult : BaseResult {

	private Integer total;

	private Integer count;

	private string next_openid;

	private Data data;

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public string getNext_openid() {
		return next_openid;
	}

	public void setNext_openid(string next_openid) {
		this.next_openid = next_openid;
	}

	public Data getData() {
		return data;
	}

	public void setData(Data data) {
		this.data = data;
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
