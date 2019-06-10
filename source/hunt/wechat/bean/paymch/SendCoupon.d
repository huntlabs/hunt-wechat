module hunt.wechat.bean.paymch.SendCoupon;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SendCoupon{

	private string coupon_stock_id;

	private Integer openid_count;

	private string partner_trade_no;

	private string openid;

	private string appid;

	private string mch_id;

	private string sub_mch_id;

	private string op_user_id;

	private string device_info;

	private string nonce_str;

	private string sign;

	private string version;

	private string type;
	
	private string sign_type;

	public string getCoupon_stock_id() {
		return coupon_stock_id;
	}

	public void setCoupon_stock_id(string coupon_stock_id) {
		this.coupon_stock_id = coupon_stock_id;
	}

	public Integer getOpenid_count() {
		return openid_count;
	}

	public void setOpenid_count(Integer openid_count) {
		this.openid_count = openid_count;
	}

	public string getPartner_trade_no() {
		return partner_trade_no;
	}

	public void setPartner_trade_no(string partner_trade_no) {
		this.partner_trade_no = partner_trade_no;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getSub_mch_id() {
		return sub_mch_id;
	}

	public void setSub_mch_id(string sub_mch_id) {
		this.sub_mch_id = sub_mch_id;
	}

	public string getOp_user_id() {
		return op_user_id;
	}

	public void setOp_user_id(string op_user_id) {
		this.op_user_id = op_user_id;
	}

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getNonce_str() {
		return nonce_str;
	}

	public void setNonce_str(string nonce_str) {
		this.nonce_str = nonce_str;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

	public string getVersion() {
		return version;
	}

	public void setVersion(string version) {
		this.version = version;
	}

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getSign_type() {
		return sign_type;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

}
