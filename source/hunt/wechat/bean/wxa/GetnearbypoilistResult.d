module hunt.wechat.bean.wxa.GetnearbypoilistResult;

import hunt.wechat.bean.BaseResult;

public class GetnearbypoilistResult : BaseResult {

	private GetnearbypoilistData data;

	public GetnearbypoilistData getData() {
		return data;
	}

	public void setData(GetnearbypoilistData data) {
		this.data = data;
	}

}
