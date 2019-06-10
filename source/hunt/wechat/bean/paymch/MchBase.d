module hunt.wechat.bean.paymch.MchBase;

import javax.xml.bind.annotation.XmlTransient;

public abstract class MchBase {

	protected string return_code;

	protected string return_msg;

	protected string appid;

	protected string mch_id;

	protected string nonce_str;

	protected string sign;
	
	protected string sign_type;

	protected string result_code;

	protected string err_code;

	protected string err_code_des;

	/**
	 * @since 2.8.5
	 */
	protected string sub_appid;

	/**
	 * @since 2.8.5
	 */
	protected string sub_mch_id;
	
	@XmlTransient
	protected Boolean sign_status;

	public string getReturn_code() {
		return return_code;
	}

	public void setReturn_code(string return_code) {
		this.return_code = return_code;
	}

	public string getReturn_msg() {
		return return_msg;
	}

	public void setReturn_msg(string return_msg) {
		this.return_msg = return_msg;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getNonce_str() {
		return nonce_str;
	}

	public void setNonce_str(string nonce_str) {
		this.nonce_str = nonce_str;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

	public string getResult_code() {
		return result_code;
	}

	public void setResult_code(string result_code) {
		this.result_code = result_code;
	}

	public string getErr_code() {
		return err_code;
	}

	public void setErr_code(string err_code) {
		this.err_code = err_code;
	}

	public string getErr_code_des() {
		return err_code_des;
	}

	public void setErr_code_des(string err_code_des) {
		this.err_code_des = err_code_des;
	}

	public string getSub_appid() {
		return sub_appid;
	}

	public void setSub_appid(string sub_appid) {
		this.sub_appid = sub_appid;
	}

	public string getSub_mch_id() {
		return sub_mch_id;
	}

	public void setSub_mch_id(string sub_mch_id) {
		this.sub_mch_id = sub_mch_id;
	}

	public string getSign_type() {
		return sign_type;
	}

	public Boolean getSign_status() {
		return sign_status;
	}

	public void setSign_status(Boolean sign_status) {
		this.sign_status = sign_status;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

}
