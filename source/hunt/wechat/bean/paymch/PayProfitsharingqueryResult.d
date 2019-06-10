module hunt.wechat.bean.paymch.PayProfitsharingqueryResult;

import hunt.collection.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class PayProfitsharingqueryResult : MchBase {

	private string transaction_id;

	private string out_order_no;

	private string order_id;

	private string status;

	private string close_reason;

	@XmlJavaTypeAdapter(value = ReceiverQuery.JsonXmlAdapter.class)
	private List<ReceiverQuery> receivers;

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

	public string getOrder_id() {
		return order_id;
	}

	public void setOrder_id(string order_id) {
		this.order_id = order_id;
	}

	public string getStatus() {
		return status;
	}

	public void setStatus(string status) {
		this.status = status;
	}

	public string getClose_reason() {
		return close_reason;
	}

	public void setClose_reason(string close_reason) {
		this.close_reason = close_reason;
	}

	public List<ReceiverQuery> getReceivers() {
		return receivers;
	}

	public void setReceivers(List<ReceiverQuery> receivers) {
		this.receivers = receivers;
	}

}
