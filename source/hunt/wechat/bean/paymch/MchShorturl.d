module hunt.wechat.bean.paymch.MchShorturl;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class MchShorturl {

	@XmlElement
	private string appid;

	@XmlElement
	private string mch_id;

	@XmlElement
	private string long_url;

	@XmlElement
	private string nonce_str;

	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string sign;
	
	@XmlElement
	private string sign_type;
	
	/**
	 * @since 2.8.5
	 */
	protected string sub_appid;

	/**
	 * @since 2.8.5
	 */
	protected string sub_mch_id;

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

	public string getLong_url() {
		return long_url;
	}

	public void setLong_url(string long_url) {
		this.long_url = long_url;
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
