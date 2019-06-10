module hunt.wechat.bean.paymch.PayDownloadfundflow;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class PayDownloadfundflow {

	private string appid;

	private string mch_id;

	private string nonce_str;

	private string sign;

	private string sign_type;

	private string bill_date;

	private string account_type;

	private string tar_type;

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

	public string getSign_type() {
		return sign_type;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

	public string getBill_date() {
		return bill_date;
	}

	public void setBill_date(string bill_date) {
		this.bill_date = bill_date;
	}

	public string getAccount_type() {
		return account_type;
	}

	public void setAccount_type(string account_type) {
		this.account_type = account_type;
	}

	public string getTar_type() {
		return tar_type;
	}

	public void setTar_type(string tar_type) {
		this.tar_type = tar_type;
	}

}
