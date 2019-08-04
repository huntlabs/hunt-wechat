module hunt.wechat.bean.paymch.PayProfitsharingOperation;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PayProfitsharingOperation : MchBase {

	//@XmlJavaTypeAdapter(value = ReceiverOperation.typeid(JsonXmlAdapter))
	private ReceiverOperation receiver;

	public ReceiverOperation getReceiver() {
		return receiver;
	}

	public void setReceiver(ReceiverOperation receiver) {
		this.receiver = receiver;
	}
	
}
