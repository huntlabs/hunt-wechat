module hunt.wechat.bean.paymch.MchPayNativeReply;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * native 回复
 * 
 *
 */
@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class MchPayNativeReply : MchBase{

	@XmlElement
	private string prepay_id;

	public string getPrepay_id() {
		return prepay_id;
	}

	public void setPrepay_id(string prepay_id) {
		this.prepay_id = prepay_id;
	}
}
