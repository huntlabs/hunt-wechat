module hunt.wechat.bean.paymch.PapayDeletecontract;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class PapayDeletecontract {

	private string mch_id;

	private string appid;

	private string contract_id;

	private string plan_id;

	private string contract_code;

	private string contract_termination_remark;

	private string version;

	private string sign;
	
	private string sign_type;

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getContract_id() {
		return contract_id;
	}

	public void setContract_id(string contract_id) {
		this.contract_id = contract_id;
	}

	public string getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(string plan_id) {
		this.plan_id = plan_id;
	}

	public string getContract_code() {
		return contract_code;
	}

	public void setContract_code(string contract_code) {
		this.contract_code = contract_code;
	}

	public string getContract_termination_remark() {
		return contract_termination_remark;
	}

	public void setContract_termination_remark(string contract_termination_remark) {
		this.contract_termination_remark = contract_termination_remark;
	}

	public string getVersion() {
		return version;
	}

	public void setVersion(string version) {
		this.version = version;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

	public string getSign_type() {
		return sign_type;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

}
