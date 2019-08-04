module hunt.wechat.bean.paymch.MicropayResult;

import hunt.collection.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class MicropayResult : MchBase{

	private string openid;
	private string is_subscribe;
	private string trade_type;
	private string bank_type;
	private string fee_type;
	private Integer total_fee;
	private string cash_fee_type;
	private Integer cash_fee;
	private Integer coupon_fee;
	private string transaction_id;
	private string out_trade_no;
	private string attach;
	private string time_end;
	private string sub_openid;
	private string sub_is_subscribe;
	private Integer settlement_total_fee;
	
	/**
	 * 单品优惠 ,请求参数 version=1.0
	 * @since 2.8.12
	 */
	//@XmlElement
	//@XmlJavaTypeAdapter(value = typeid(MicropayPromotionDetailXmlAdapter))
	private List!(MicropayPromotionDetail) promotion_detail;

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
	public string getFee_type() {
		return fee_type;
	}
	public void setFee_type(string fee_type) {
		this.fee_type = fee_type;
	}
	public Integer getTotal_fee() {
		return total_fee;
	}
	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}
	public string getCash_fee_type() {
		return cash_fee_type;
	}
	public void setCash_fee_type(string cash_fee_type) {
		this.cash_fee_type = cash_fee_type;
	}
	public Integer getCash_fee() {
		return cash_fee;
	}
	public void setCash_fee(Integer cash_fee) {
		this.cash_fee = cash_fee;
	}
	public Integer getCoupon_fee() {
		return coupon_fee;
	}
	public void setCoupon_fee(Integer coupon_fee) {
		this.coupon_fee = coupon_fee;
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
	public Integer getSettlement_total_fee() {
		return settlement_total_fee;
	}
	public void setSettlement_total_fee(Integer settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}
	public List!(MicropayPromotionDetail) getPromotion_detail() {
		return promotion_detail;
	}
	public void setPromotion_detail(List!(MicropayPromotionDetail) promotion_detail) {
		this.promotion_detail = promotion_detail;
	}

}
