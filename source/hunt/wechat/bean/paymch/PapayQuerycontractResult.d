module hunt.wechat.bean.paymch.PapayQuerycontractResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PapayQuerycontractResult : MchBase{

	private Integer contract_id;

	private Integer plan_id;

	private Integer request_serial;

	private string contract_code;

	//@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string contract_display_account;

	private Integer contract_state;

	private string contract_signed_time;

	private string contract_expired_time;

	private string contract_terminated_time;

	private string contract_termination_mode;

	//@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string contract_termination_remark;

	private string openid;

	public Integer getContract_id() {
		return contract_id;
	}

	public void setContract_id(Integer contract_id) {
		this.contract_id = contract_id;
	}

	public Integer getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(Integer plan_id) {
		this.plan_id = plan_id;
	}

	public Integer getRequest_serial() {
		return request_serial;
	}

	public void setRequest_serial(Integer request_serial) {
		this.request_serial = request_serial;
	}

	public string getContract_code() {
		return contract_code;
	}

	public void setContract_code(string contract_code) {
		this.contract_code = contract_code;
	}

	public string getContract_display_account() {
		return contract_display_account;
	}

	public void setContract_display_account(string contract_display_account) {
		this.contract_display_account = contract_display_account;
	}

	public Integer getContract_state() {
		return contract_state;
	}

	public void setContract_state(Integer contract_state) {
		this.contract_state = contract_state;
	}

	public string getContract_signed_time() {
		return contract_signed_time;
	}

	public void setContract_signed_time(string contract_signed_time) {
		this.contract_signed_time = contract_signed_time;
	}

	public string getContract_expired_time() {
		return contract_expired_time;
	}

	public void setContract_expired_time(string contract_expired_time) {
		this.contract_expired_time = contract_expired_time;
	}

	public string getContract_terminated_time() {
		return contract_terminated_time;
	}

	public void setContract_terminated_time(string contract_terminated_time) {
		this.contract_terminated_time = contract_terminated_time;
	}

	public string getContract_termination_mode() {
		return contract_termination_mode;
	}

	public void setContract_termination_mode(string contract_termination_mode) {
		this.contract_termination_mode = contract_termination_mode;
	}

	public string getContract_termination_remark() {
		return contract_termination_remark;
	}

	public void setContract_termination_remark(string contract_termination_remark) {
		this.contract_termination_remark = contract_termination_remark;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}



}
