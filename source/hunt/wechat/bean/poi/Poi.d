module hunt.wechat.bean.poi.Poi;

/**
 * 门店信息－提交对象
 * 
 * 
 *
 */
class Poi {

	private Business business;

	public Poi() {
	}

	public Poi(Business business) {
		this.business = business;
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}
}
