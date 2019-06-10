module hunt.wechat.bean.paymch.Report;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class Report {

	private string appid;
	private string mch_id;
	private string device_info;
	private string nonce_str;
	private string sign;
	private string sign_type;
	private string interface_url;
	private Integer execute_time_;
	private string return_code;
	private string return_msg;
	private string result_code;
	private string err_code;
	private string err_code_des;
	private string out_trade_no;
	private string user_ip;
	private string time;

	/**
	 * @since 2.8.5
	 */
	@XmlElement
	private string sub_appid;

	/**
	 * @since 2.8.5
	 */
	@XmlElement
	private string sub_mch_id;

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

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
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

	public string getInterface_url() {
		return interface_url;
	}

	public void setInterface_url(string interface_url) {
		this.interface_url = interface_url;
	}

	public Integer getExecute_time_() {
		return execute_time_;
	}

	public void setExecute_time_(Integer execute_time_) {
		this.execute_time_ = execute_time_;
	}

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

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public string getUser_ip() {
		return user_ip;
	}

	public void setUser_ip(string user_ip) {
		this.user_ip = user_ip;
	}

	public string getTime() {
		return time;
	}

	public void setTime(string time) {
		this.time = time;
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

	/**
	 * 签名类型
	 * @since 2.8.5
	 * @param sign_type HMAC-SHA256和MD5
	 */
	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}
}
