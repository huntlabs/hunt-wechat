module hunt.wechat.bean.wxa.GetnearbypoilistDataData;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GetnearbypoilistDataData : BaseResult {

	private List<GetnearbypoilistPoi> poi_list;

	public List<GetnearbypoilistPoi> getPoi_list() {
		return poi_list;
	}

	public void setPoi_list(List<GetnearbypoilistPoi> poi_list) {
		this.poi_list = poi_list;
	}

}
