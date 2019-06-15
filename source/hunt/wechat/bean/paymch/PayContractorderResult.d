module hunt.wechat.bean.paymch.PayContractorderResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PayContractorderResult : MchBase{

	private string contract_result_code;
	
	private string contract_err_code;
	
	private string contract_err_code_des;
	
	private string prepay_id;
	
	private string trade_type;
	
	private string code_url;
	
	private string plan_id;
	
	private string request_serial;
	
	private string contract_code;

	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string contract_display_account;
	
	private string mweb_url;
	
	private string out_trade_no;

	public string getContract_result_code() {
		return contract_result_code;
	}

	public void setContract_result_code(string contract_result_code) {
		this.contract_result_code = contract_result_code;
	}

	public string getContract_err_code() {
		return contract_err_code;
	}

	public void setContract_err_code(string contract_err_code) {
		this.contract_err_code = contract_err_code;
	}

	public string getContract_err_code_des() {
		return contract_err_code_des;
	}

	public void setContract_err_code_des(string contract_err_code_des) {
		this.contract_err_code_des = contract_err_code_des;
	}

	public string getPrepay_id() {
		return prepay_id;
	}

	public void setPrepay_id(string prepay_id) {
		this.prepay_id = prepay_id;
	}

	public string getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getCode_url() {
		return code_url;
	}

	public void setCode_url(string code_url) {
		this.code_url = code_url;
	}

	public string getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(string plan_id) {
		this.plan_id = plan_id;
	}

	public string getRequest_serial() {
		return request_serial;
	}

	public void setRequest_serial(string request_serial) {
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

	public string getMweb_url() {
		return mweb_url;
	}

	public void setMweb_url(string mweb_url) {
		this.mweb_url = mweb_url;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	
}
