module hunt.wechat.bean.paymch.PromotionDetail;

import hunt.collection.List;

public class PromotionDetail {

	private string promotion_id;

	private string name;

	private string scope;

	private string type;

	private Integer amount;

	private string activity_id;

	private string wxpay_contribute;

	private string merchant_contribute;

	private string other_contribute;

	private List<PromotionGoodsDetail> goods_detail;

	public string getPromotion_id() {
		return promotion_id;
	}

	public void setPromotion_id(string promotion_id) {
		this.promotion_id = promotion_id;
	}

	public string getName() {
		return name;
	}

	public void setName(string name) {
		this.name = name;
	}

	public string getScope() {
		return scope;
	}

	public void setScope(string scope) {
		this.scope = scope;
	}

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public string getActivity_id() {
		return activity_id;
	}

	public void setActivity_id(string activity_id) {
		this.activity_id = activity_id;
	}

	public string getWxpay_contribute() {
		return wxpay_contribute;
	}

	public void setWxpay_contribute(string wxpay_contribute) {
		this.wxpay_contribute = wxpay_contribute;
	}

	public string getMerchant_contribute() {
		return merchant_contribute;
	}

	public void setMerchant_contribute(string merchant_contribute) {
		this.merchant_contribute = merchant_contribute;
	}

	public string getOther_contribute() {
		return other_contribute;
	}

	public void setOther_contribute(string other_contribute) {
		this.other_contribute = other_contribute;
	}

	public List<PromotionGoodsDetail> getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(List<PromotionGoodsDetail> goods_detail) {
		this.goods_detail = goods_detail;
	}

}
