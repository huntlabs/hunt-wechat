module hunt.wechat.bean.paymch.Coupon;

public class Coupon {

	private string type; // CASH--充值代金券 NO_CASH---非充值代金券

	private string id;

	private Integer fee;

	private Integer n;

	public Coupon() {
		super();
	}

	public Coupon(string type, string id, Integer fee, Integer n) {
		super();
		this.type = type;
		this.id = id;
		this.fee = fee;
		this.n = n;
	}

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getId() {
		return id;
	}

	public void setId(string id) {
		this.id = id;
	}

	public Integer getFee() {
		return fee;
	}

	public void setFee(Integer fee) {
		this.fee = fee;
	}

	public Integer getN() {
		return n;
	}

	public void setN(Integer n) {
		this.n = n;
	}

	override
	public string toString() {
		return string.format("type:%s id:%s fee:%d n:%d", type, id, fee, n);
	}

}
