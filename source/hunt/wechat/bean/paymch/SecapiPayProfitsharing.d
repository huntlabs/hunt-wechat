module hunt.wechat.bean.paymch.SecapiPayProfitsharing;

import hunt.collection.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class SecapiPayProfitsharing : MchBase {

	private string transaction_id;

	private string out_order_no;

	@XmlJavaTypeAdapter(value = Receiver.typeid(JsonXmlAdapter))
	private List!(Receiver) receivers;

	public string getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(string transaction_id) {
		this.transaction_id = transaction_id;
	}

	public string getOut_order_no() {
		return out_order_no;
	}

	public void setOut_order_no(string out_order_no) {
		this.out_order_no = out_order_no;
	}

	public List!(Receiver) getReceivers() {
		return receivers;
	}

	public void setReceivers(List!(Receiver) receivers) {
		this.receivers = receivers;
	}

}
