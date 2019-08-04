module hunt.wechat.bean.card.Groupon;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 团购券
 * 
 * 
 *
 */
class Groupon : AbstractInfo {

	/**
	 * 团购详情
	 * 添加必填，不支持修改 
	 */
	@JSONField(name = "deal_detail")
	private string dealDetail;

	/**
	 * 团购详情
	 */
	public string getDealDetail() {
		return dealDetail;
	}

	/**
	 * 团购详情
	 * 添加必填，不支持修改 
	 */
	public void setDealDetail(string dealDetail) {
		this.dealDetail = dealDetail;
	}
}
