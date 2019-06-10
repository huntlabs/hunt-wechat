module hunt.wechat.bean.paymch.SendredpackResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SendredpackResult : MchBase{

	private string mch_billno;

	private string wxappid;

	private string re_openid;

	private Integer total_amount;

	private string send_listid;
	
	public string getMch_billno() {
		return mch_billno;
	}

	public void setMch_billno(string mch_billno) {
		this.mch_billno = mch_billno;
	}

	public string getWxappid() {
		return wxappid;
	}

	public void setWxappid(string wxappid) {
		this.wxappid = wxappid;
	}

	public string getRe_openid() {
		return re_openid;
	}

	public void setRe_openid(string re_openid) {
		this.re_openid = re_openid;
	}

	public Integer getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}

	public string getSend_listid() {
		return send_listid;
	}

	public void setSend_listid(string send_listid) {
		this.send_listid = send_listid;
	}


}
