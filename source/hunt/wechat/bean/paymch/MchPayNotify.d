module hunt.wechat.bean.paymch.MchPayNotify;

import hunt.collection.ArrayList;
import hunt.collection.List;
import hunt.collection.Map;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.DynamicField;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class MchPayNotify : MchBase : DynamicField{
	
	private string device_info;

	private string openid;

	private string is_subscribe;

	/**
	 * @since 2.8.5
	 */
	private string sub_openid; // 用户在子商户appid下的唯一标识

	/**
	 * @since 2.8.5
	 */
	private string sub_is_subscribe; // 用户是否关注子公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效

	private string trade_type;

	private string bank_type;

	private Integer total_fee;

	private Integer settlement_total_fee;

	private string fee_type;

	private Integer cash_fee;

	private string cash_fee_type;

	private Integer coupon_fee;

	private Integer coupon_count;

	private string transaction_id;

	private string out_trade_no;

	private string attach;

	private string time_end;

	private string contract_id;

	private string trade_state;
	
	/** 代金券或立减优惠
	 * @since 2.8.5
	 * 使用  getCoupons() 获取 List.
	 * List.size() = coupon_count
	 */
	@XmlTransient
	private List!(Coupon) coupons;

	/**
	 * 单品优惠 ,请求参数 version=1.0
	 * @since 2.8.12
	 */
	@XmlElement
	@XmlJavaTypeAdapter(value = PromotionDetailXmlAdapter.class)
	private List!(PromotionDetail) promotion_detail;
	
	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getIs_subscribe() {
		return is_subscribe;
	}

	public void setIs_subscribe(string is_subscribe) {
		this.is_subscribe = is_subscribe;
	}

	public string getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getBank_type() {
		return bank_type;
	}

	public void setBank_type(string bank_type) {
		this.bank_type = bank_type;
	}

	public Integer getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}

	public string getFee_type() {
		return fee_type;
	}

	public void setFee_type(string fee_type) {
		this.fee_type = fee_type;
	}

	public Integer getCash_fee() {
		return cash_fee;
	}

	public void setCash_fee(Integer cash_fee) {
		this.cash_fee = cash_fee;
	}

	public string getCash_fee_type() {
		return cash_fee_type;
	}

	public void setCash_fee_type(string cash_fee_type) {
		this.cash_fee_type = cash_fee_type;
	}

	public Integer getCoupon_fee() {
		return coupon_fee;
	}

	public void setCoupon_fee(Integer coupon_fee) {
		this.coupon_fee = coupon_fee;
	}

	public Integer getCoupon_count() {
		return coupon_count;
	}

	public void setCoupon_count(Integer coupon_count) {
		this.coupon_count = coupon_count;
	}

	public string getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(string transaction_id) {
		this.transaction_id = transaction_id;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public string getAttach() {
		return attach;
	}

	public void setAttach(string attach) {
		this.attach = attach;
	}

	public string getTime_end() {
		return time_end;
	}

	public void setTime_end(string time_end) {
		this.time_end = time_end;
	}

	public string getContract_id() {
		return contract_id;
	}

	public void setContract_id(string contract_id) {
		this.contract_id = contract_id;
	}

	public string getTrade_state() {
		return trade_state;
	}

	public void setTrade_state(string trade_state) {
		this.trade_state = trade_state;
	}

	public Integer getSettlement_total_fee() {
		return settlement_total_fee;
	}

	public void setSettlement_total_fee(Integer settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}

	public string getSub_openid() {
		return sub_openid;
	}

	public void setSub_openid(string sub_openid) {
		this.sub_openid = sub_openid;
	}

	public string getSub_is_subscribe() {
		return sub_is_subscribe;
	}

	public void setSub_is_subscribe(string sub_is_subscribe) {
		this.sub_is_subscribe = sub_is_subscribe;
	}

	public List!(Coupon) getCoupons() {
		return coupons;
	}

	public void setCoupons(List!(Coupon) coupons) {
		this.coupons = coupons;
	}
	
	public List!(PromotionDetail) getPromotion_detail() {
		return promotion_detail;
	}

	public void setPromotion_detail(List!(PromotionDetail) promotion_detail) {
		this.promotion_detail = promotion_detail;
	}
	

	override
	public void buildDynamicField(Map!(string, string) dataMap) {
		if(dataMap != null){
			string coupon_countStr = dataMap.get("coupon_count");
			if(coupon_countStr != null){
				List!(Coupon) list = new ArrayList!(Coupon)();
				for (int i = 0; i < Integer.parseInt(coupon_countStr); i++) {
					Coupon coupon = new Coupon(
							dataMap.get("coupon_type_"+i),
							dataMap.get("coupon_id_"+i),
							Integer.parseInt(dataMap.get("coupon_fee_"+i)), 
							i);
					list.add(coupon);
				}
				this.coupons = list;
			}
			
		}
	}
	
}
