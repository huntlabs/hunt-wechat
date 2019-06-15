module hunt.wechat.bean.paymch.MchPayNativeInput;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class MchPayNativeInput {

	private string appid;

	private string openid;

	private string mch_id;

	private string is_subscribe;

	private string nonce_str;

	private string product_id;

	private string sign;

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getIs_subscribe() {
		return is_subscribe;
	}

	public void setIs_subscribe(string is_subscribe) {
		this.is_subscribe = is_subscribe;
	}

	public string getNonce_str() {
		return nonce_str;
	}

	public void setNonce_str(string nonce_str) {
		this.nonce_str = nonce_str;
	}

	public string getProduct_id() {
		return product_id;
	}

	public void setProduct_id(string product_id) {
		this.product_id = product_id;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

}
