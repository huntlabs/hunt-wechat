module hunt.wechat.bean.paymch.SecapiPayProfitsharingfinish;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SecapiPayProfitsharingfinish : MchBase {

	private string transaction_id;

	private string out_order_no;

	private Integer amount;

	private string description;

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

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public string getDescription() {
		return description;
	}

	public void setDescription(string description) {
		this.description = description;
	}
}
