module hunt.wechat.bean.poi.BusinessResult;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 门店信息－响应对象
 * 
 * 
 *
 */
class BusinessResult {

	@JSONField(name = "base_info")
	private BaseInfoResult baseInfo;

	public BaseInfoResult getBaseInfo() {
		return baseInfo;
	}

	public void setBaseInfo(BaseInfoResult baseInfo) {
		this.baseInfo = baseInfo;
	}
}
