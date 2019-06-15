module hunt.wechat.bean.paymch.PappayapplyNotify;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PappayapplyNotify : MchBase{

	private string device_info;


	private string is_subscribe;

	private string openid;

	private string trade_type;

	private string bank_type;

	private Integer total_fee;

	private string fee_type;

	private Integer cash_fee;

	private string cash_fee_type;

	private Integer coupon_fee;

	private Integer coupon_count;

	private string transaction_id;

	private string out_trade_no;

	private string attach;

	private string time_end;

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getIs_subscribe() {
		return is_subscribe;
	}

	public void setIs_subscribe(string is_subscribe) {
		this.is_subscribe = is_subscribe;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
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




}
