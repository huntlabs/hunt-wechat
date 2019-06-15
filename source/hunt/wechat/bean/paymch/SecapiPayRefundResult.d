module hunt.wechat.bean.paymch.SecapiPayRefundResult;

import java.lang.reflect.Field;
import hunt.collection.ArrayList;
import hunt.collection.List;
import hunt.collection.Map;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import hunt.logger;


import hunt.wechat.bean.DynamicField;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)

class SecapiPayRefundResult : MchBase : DynamicField{


	private string device_info;

	private string transaction_id;

	private string out_trade_no;

	private string out_refund_no;

	private string refund_id;

	private string refund_channel;

	private Integer refund_fee;

	private Integer total_fee;

	private string fee_type;

	private Integer settlement_refund_fee; // 应结退款金额

	private Integer settlement_total_fee; // 应结订单金额

	private Integer cash_fee;

	private Integer cash_refund_fee;

	private Integer coupon_refund_fee;

	private Integer coupon_refund_count;

	// 代金券或立减优惠
	// @since 2.8.5
	// 使用 getCoupons() 获取 List.
	// List.size() = coupon_count
	@XmlTransient
	private List!(Coupon) coupons;

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
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

	public string getOut_refund_no() {
		return out_refund_no;
	}

	public void setOut_refund_no(string out_refund_no) {
		this.out_refund_no = out_refund_no;
	}

	public string getRefund_id() {
		return refund_id;
	}

	public void setRefund_id(string refund_id) {
		this.refund_id = refund_id;
	}

	public string getRefund_channel() {
		return refund_channel;
	}

	public void setRefund_channel(string refund_channel) {
		this.refund_channel = refund_channel;
	}

	public Integer getRefund_fee() {
		return refund_fee;
	}

	public void setRefund_fee(Integer refund_fee) {
		this.refund_fee = refund_fee;
	}

	public Integer getCoupon_refund_fee() {
		return coupon_refund_fee;
	}

	public void setCoupon_refund_fee(Integer coupon_refund_fee) {
		this.coupon_refund_fee = coupon_refund_fee;
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

	public Integer getCash_refund_fee() {
		return cash_refund_fee;
	}

	public void setCash_refund_fee(Integer cash_refund_fee) {
		this.cash_refund_fee = cash_refund_fee;
	}

	public Integer getCoupon_refund_count() {
		return coupon_refund_count;
	}

	public void setCoupon_refund_count(Integer coupon_refund_count) {
		this.coupon_refund_count = coupon_refund_count;
	}

	public Integer getSettlement_refund_fee() {
		return settlement_refund_fee;
	}

	public void setSettlement_refund_fee(Integer settlement_refund_fee) {
		this.settlement_refund_fee = settlement_refund_fee;
	}

	public Integer getSettlement_total_fee() {
		return settlement_total_fee;
	}

	public void setSettlement_total_fee(Integer settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}

	public List!(Coupon) getCoupons() {
		return coupons;
	}

	public void setCoupons(List!(Coupon) coupons) {
		this.coupons = coupons;
	}

	override
	public void buildDynamicField(Map!(string, string) dataMap) {
		if(dataMap != null){
			string coupon_countStr = dataMap.get("coupon_refund_count");
			if(coupon_countStr != null){
				List!(Coupon) list = new ArrayList!(Coupon)();
				for (int i = 0; i < Integer.parseInt(coupon_countStr); i++) {
					Coupon coupon = new Coupon(
							dataMap.get("coupon_type_"+i),
							dataMap.get("coupon_refund_id_"+i),
							Integer.parseInt(dataMap.get("coupon_refund_fee_"+i)), 
							i);
					list.add(coupon);
				}
				this.coupons = list;
			}
		}
	}
	
}
