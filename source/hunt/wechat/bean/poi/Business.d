module hunt.wechat.bean.poi.Business;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 门店信息－提交对象
 * 
 * 
 *
 */
class Business {

	@JSONField(name = "base_info")
	private BaseInfo baseInfo;

	public Business() {
	}

	public Business(BaseInfo baseInfo) {
		this.baseInfo = baseInfo;
	}

	public BaseInfo getBaseInfo() {
		return baseInfo;
	}

	public void setBaseInfo(BaseInfo baseInfo) {
		this.baseInfo = baseInfo;
	}
}
