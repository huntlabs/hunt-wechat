module hunt.wechat.bean.paymch.RefundqueryResultItem;

import hunt.collection.List;

public class RefundqueryResultItem {

	private string out_refund_no;
	private string refund_id;
	private string refund_channel;
	private Integer refund_fee;
	private Integer settlement_refund_fee;

	private string coupon_type;
	private Integer coupon_refund_fee;
	private Integer coupon_refund_count;
	private string coupon_refund;

	private string refund_status;
	private string refund_recv_accout;

	private Integer n;

	private List<Coupon> coupons;

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

	public Integer getSettlement_refund_fee() {
		return settlement_refund_fee;
	}

	public void setSettlement_refund_fee(Integer settlement_refund_fee) {
		this.settlement_refund_fee = settlement_refund_fee;
	}

	public string getCoupon_type() {
		return coupon_type;
	}

	public void setCoupon_type(string coupon_type) {
		this.coupon_type = coupon_type;
	}

	public Integer getCoupon_refund_fee() {
		return coupon_refund_fee;
	}

	public void setCoupon_refund_fee(Integer coupon_refund_fee) {
		this.coupon_refund_fee = coupon_refund_fee;
	}

	public Integer getCoupon_refund_count() {
		return coupon_refund_count;
	}

	public void setCoupon_refund_count(Integer coupon_refund_count) {
		this.coupon_refund_count = coupon_refund_count;
	}

	public string getCoupon_refund() {
		return coupon_refund;
	}

	public void setCoupon_refund(string coupon_refund) {
		this.coupon_refund = coupon_refund;
	}

	public string getRefund_status() {
		return refund_status;
	}

	public void setRefund_status(string refund_status) {
		this.refund_status = refund_status;
	}

	public string getRefund_recv_accout() {
		return refund_recv_accout;
	}

	public void setRefund_recv_accout(string refund_recv_accout) {
		this.refund_recv_accout = refund_recv_accout;
	}

	public Integer getN() {
		return n;
	}

	public void setN(Integer n) {
		this.n = n;
	}

	public List<Coupon> getCoupons() {
		return coupons;
	}

	public void setCoupons(List<Coupon> coupons) {
		this.coupons = coupons;
	}

}
