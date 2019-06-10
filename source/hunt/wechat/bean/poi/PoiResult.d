module hunt.wechat.bean.poi.PoiResult;

import hunt.wechat.bean.BaseResult;

/**
 * 门店信息－响应对象
 * 
 * @author Moyq5
 *
 */
public class PoiResult : BaseResult {

	private BusinessResult business;

	public BusinessResult getBusiness() {
		return business;
	}

	public void setBusiness(BusinessResult business) {
		this.business = business;
	}
}
