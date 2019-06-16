module hunt.wechat.bean.paymch.Authcodetoopenid;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

/**
 * 刷卡支付 授权码查询OPENID 参数对象
 * 
 *
 */
@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Authcodetoopenid {

	@XmlElement
	private string appid;

	@XmlElement
	private string mch_id;

	@XmlElement
	private string auth_code;

	@XmlElement
	private string nonce_str;

	@XmlElement
	@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string sign;
	
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

	public string getAuth_code() {
		return auth_code;
	}

	public void setAuth_code(string auth_code) {
		this.auth_code = auth_code;
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

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}
	
}
