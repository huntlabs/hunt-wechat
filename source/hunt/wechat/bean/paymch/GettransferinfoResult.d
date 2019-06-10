module hunt.wechat.bean.paymch.GettransferinfoResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class GettransferinfoResult : MchBase {

	private string partner_trade_no;
	private string detail_id;
	private string status;
	private string reason;
	private string openid;
	private string transfer_name;
	private Integer payment_amount;
	private string transfer_time;
	private string desc;

	public string getPartner_trade_no() {
		return partner_trade_no;
	}

	public void setPartner_trade_no(string partner_trade_no) {
		this.partner_trade_no = partner_trade_no;
	}

	public string getDetail_id() {
		return detail_id;
	}

	public void setDetail_id(string detail_id) {
		this.detail_id = detail_id;
	}

	public string getStatus() {
		return status;
	}

	public void setStatus(string status) {
		this.status = status;
	}

	public string getReason() {
		return reason;
	}

	public void setReason(string reason) {
		this.reason = reason;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getTransfer_name() {
		return transfer_name;
	}

	public void setTransfer_name(string transfer_name) {
		this.transfer_name = transfer_name;
	}

	public Integer getPayment_amount() {
		return payment_amount;
	}

	public void setPayment_amount(Integer payment_amount) {
		this.payment_amount = payment_amount;
	}

	public string getTransfer_time() {
		return transfer_time;
	}

	public void setTransfer_time(string transfer_time) {
		this.transfer_time = transfer_time;
	}

	public string getDesc() {
		return desc;
	}

	public void setDesc(string desc) {
		this.desc = desc;
	}

}
