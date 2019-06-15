module hunt.wechat.bean.paymch.PapayDeletecontractResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PapayDeletecontractResult : MchBase {

	private Integer contract_id;

	private Integer plan_id;

	private string contract_code;

	private string request_serial;

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

	public string getContract_code() {
		return contract_code;
	}

	public void setContract_code(string contract_code) {
		this.contract_code = contract_code;
	}

	public string getRequest_serial() {
		return request_serial;
	}

	public void setRequest_serial(string request_serial) {
		this.request_serial = request_serial;
	}

}
