module hunt.wechat.bean.paymch.Hbinfo;

public class Hbinfo {

	private string openid;

	private Integer amount;

	private string rcv_time;

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public string getRcv_time() {
		return rcv_time;
	}

	public void setRcv_time(string rcv_time) {
		this.rcv_time = rcv_time;
	}

}
