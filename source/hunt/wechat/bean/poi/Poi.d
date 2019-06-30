module hunt.wechat.bean.poi.Poi;

/**
 * 门店信息－提交对象
 * 
 * 
 *
 */
class Poi {

	private Business business;

	public this() {
	}

	public this(Business business) {
		this.business = business;
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}
}
