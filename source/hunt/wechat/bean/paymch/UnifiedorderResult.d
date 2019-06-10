module hunt.wechat.bean.paymch.UnifiedorderResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

/**
 * 统一支付请求返回对象
 * @author Yi
 *
 */

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class UnifiedorderResult : MchBase{

	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string device_info;

	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string trade_type;

	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string prepay_id;

	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string code_url;
	
	@XmlElement
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string mweb_url;

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getPrepay_id() {
		return prepay_id;
	}

	public void setPrepay_id(string prepay_id) {
		this.prepay_id = prepay_id;
	}

	public string getCode_url() {
		return code_url;
	}

	public void setCode_url(string code_url) {
		this.code_url = code_url;
	}

	public string getMweb_url() {
		return mweb_url;
	}

	public void setMweb_url(string mweb_url) {
		this.mweb_url = mweb_url;
	}

}