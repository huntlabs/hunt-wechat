module hunt.wechat.bean.paymch.MchDownloadbill;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class MchDownloadbill {

	private string appid;

	private string mch_id;

	private string device_info;

	private string out_trade_no;

	private string nonce_str;

	private string sign;
	
	private string sign_type;

	private string bill_date;

	private string bill_type;
	
	/**
	 * @since 2.8.19
	 */
	private string tar_type;

	/**
	 * @since 2.8.5
	 */
	@XmlElement
	private string sub_appid;

	/**
	 * @since 2.8.5
	 */
	@XmlElement
	private string sub_mch_id;

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

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
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

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getBill_date() {
		return bill_date;
	}

	public void setBill_date(string bill_date) {
		this.bill_date = bill_date;
	}

	public string getBill_type() {
		return bill_type;
	}

	public void setBill_type(string bill_type) {
		this.bill_type = bill_type;
	}

	public string getSub_appid() {
		return sub_appid;
	}

	public void setSub_appid(string sub_appid) {
		this.sub_appid = sub_appid;
	}

	public string getSub_mch_id() {
		return sub_mch_id;
	}

	public void setSub_mch_id(string sub_mch_id) {
		this.sub_mch_id = sub_mch_id;
	}

	public string getSign_type() {
		return sign_type;
	}

	/**
	 * 签名类型
	 * @since 2.8.5
	 * @param sign_type HMAC-SHA256和MD5
	 */
	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

	public string getTar_type() {
		return tar_type;
	}

	public void setTar_type(string tar_type) {
		this.tar_type = tar_type;
	}
	
}
