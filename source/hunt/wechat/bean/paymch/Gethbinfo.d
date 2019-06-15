module hunt.wechat.bean.paymch.Gethbinfo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Gethbinfo {

	private string nonce_str;

	private string sign;

	private string mch_billno;

	private string mch_id;

	private string appid;

	private string bill_type;
	
	private string sign_type;

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

	public string getMch_billno() {
		return mch_billno;
	}

	public void setMch_billno(string mch_billno) {
		this.mch_billno = mch_billno;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getBill_type() {
		return bill_type;
	}

	public void setBill_type(string bill_type) {
		this.bill_type = bill_type;
	}

	public string getSign_type() {
		return sign_type;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}
}
