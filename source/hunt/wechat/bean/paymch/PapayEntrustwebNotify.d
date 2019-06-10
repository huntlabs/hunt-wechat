module hunt.wechat.bean.paymch.PapayEntrustwebNotify;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class PapayEntrustwebNotify : MchBase{

	private string contract_code;

	private string openid;

	private string plan_id;

	private string change_type;

	private string operate_time;

	private string contract_id;

	private string contract_expired_time;

	private string request_serial;

	private string contract_termination_mode;

	public string getContract_code() {
		return contract_code;
	}

	public void setContract_code(string contract_code) {
		this.contract_code = contract_code;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(string plan_id) {
		this.plan_id = plan_id;
	}

	public string getChange_type() {
		return change_type;
	}

	public void setChange_type(string change_type) {
		this.change_type = change_type;
	}

	public string getOperate_time() {
		return operate_time;
	}

	public void setOperate_time(string operate_time) {
		this.operate_time = operate_time;
	}

	public string getContract_id() {
		return contract_id;
	}

	public void setContract_id(string contract_id) {
		this.contract_id = contract_id;
	}

	public string getContract_expired_time() {
		return contract_expired_time;
	}

	public void setContract_expired_time(string contract_expired_time) {
		this.contract_expired_time = contract_expired_time;
	}

	public string getRequest_serial() {
		return request_serial;
	}

	public void setRequest_serial(string request_serial) {
		this.request_serial = request_serial;
	}

	public string getContract_termination_mode() {
		return contract_termination_mode;
	}

	public void setContract_termination_mode(string contract_termination_mode) {
		this.contract_termination_mode = contract_termination_mode;
	}

}
