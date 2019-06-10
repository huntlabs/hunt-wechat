module hunt.wechat.bean.wxa.AddnearbypoiResult;

import hunt.wechat.bean.BaseResult;

public class AddnearbypoiResult : BaseResult {

	private AddnearbypoiData data;

	public AddnearbypoiData getData() {
		return data;
	}

	public void setData(AddnearbypoiData data) {
		this.data = data;
	}

}
