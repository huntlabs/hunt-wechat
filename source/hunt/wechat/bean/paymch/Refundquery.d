module hunt.wechat.bean.paymch.Refundquery;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 退款查询
 * 
 * 
 * 
 */

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Refundquery {

	//@XmlElement
	private string appid;
	
	//@XmlElement
	private string mch_id;
	
	//@XmlElement
	private string device_info;
	
	//@XmlElement
	private string nonce_str;
	
	//@XmlElement
	private string sign;
	
	//@XmlElement
	private string sign_type;
	
	//@XmlElement
	private string transaction_id;
	
	//@XmlElement
	private string out_trade_no;
	
	//@XmlElement
	private string out_refund_no;
	
	//@XmlElement
	private string refund_id;
	
	/**
	 * @since 2.8.5
	 */
	//@XmlElement
	private string sub_appid;

	/**
	 * @since 2.8.5
	 */
	//@XmlElement
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
}
