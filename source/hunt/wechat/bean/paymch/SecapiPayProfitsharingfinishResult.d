module hunt.wechat.bean.paymch.SecapiPayProfitsharingfinishResult;

class SecapiPayProfitsharingfinishResult : MchBase {

	private string transaction_id;

	private string out_order_no;

	private string order_id;

	private Integer amount;

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

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}
}
