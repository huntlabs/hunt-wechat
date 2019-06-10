module hunt.wechat.bean.paymch.MchPayRefundNotifyReqInfo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class MchPayRefundNotifyReqInfo {

	private string transaction_id;

	private string out_trade_no;

	private string refund_id;

	private string out_refund_no;

	private Integer total_fee;

	private Integer settlement_total_fee;

	private Integer refund_fee;

	private Integer settlement_refund_fee;

	private string refund_status;

	private string success_time;

	private string refund_recv_accout;

	private string refund_account;

	private string refund_request_source;

	public string getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(string transaction_id) {
		this.transaction_id = transaction_id;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public string getRefund_id() {
		return refund_id;
	}

	public void setRefund_id(string refund_id) {
		this.refund_id = refund_id;
	}

	public string getOut_refund_no() {
		return out_refund_no;
	}

	public void setOut_refund_no(string out_refund_no) {
		this.out_refund_no = out_refund_no;
	}

	public Integer getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}

	public Integer getSettlement_total_fee() {
		return settlement_total_fee;
	}

	public void setSettlement_total_fee(Integer settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}

	public Integer getRefund_fee() {
		return refund_fee;
	}

	public void setRefund_fee(Integer refund_fee) {
		this.refund_fee = refund_fee;
	}

	public Integer getSettlement_refund_fee() {
		return settlement_refund_fee;
	}

	public void setSettlement_refund_fee(Integer settlement_refund_fee) {
		this.settlement_refund_fee = settlement_refund_fee;
	}

	public string getRefund_status() {
		return refund_status;
	}

	public void setRefund_status(string refund_status) {
		this.refund_status = refund_status;
	}

	public string getSuccess_time() {
		return success_time;
	}

	public void setSuccess_time(string success_time) {
		this.success_time = success_time;
	}

	public string getRefund_recv_accout() {
		return refund_recv_accout;
	}

	public void setRefund_recv_accout(string refund_recv_accout) {
		this.refund_recv_accout = refund_recv_accout;
	}

	public string getRefund_account() {
		return refund_account;
	}

	public void setRefund_account(string refund_account) {
		this.refund_account = refund_account;
	}

	public string getRefund_request_source() {
		return refund_request_source;
	}

	public void setRefund_request_source(string refund_request_source) {
		this.refund_request_source = refund_request_source;
	}

}
