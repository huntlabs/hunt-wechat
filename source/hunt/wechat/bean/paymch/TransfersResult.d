module hunt.wechat.bean.paymch.TransfersResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class TransfersResult : MchBase{

	private string partner_trade_no;

	private string payment_no;

	private string payment_time;

	public string getPartner_trade_no() {
		return partner_trade_no;
	}

	public void setPartner_trade_no(string partner_trade_no) {
		this.partner_trade_no = partner_trade_no;
	}

	public string getPayment_no() {
		return payment_no;
	}

	public void setPayment_no(string payment_no) {
		this.payment_no = payment_no;
	}

	public string getPayment_time() {
		return payment_time;
	}

	public void setPayment_time(string payment_time) {
		this.payment_time = payment_time;
	}


}
