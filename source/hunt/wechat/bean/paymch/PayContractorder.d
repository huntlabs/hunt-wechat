module hunt.wechat.bean.paymch.PayContractorder;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

/**
 * 支付中签约参数对象
 * 
 * 
 *
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PayContractorder {

	private string appid;
	private string mch_id;
	private string contract_mchid;
	private string contract_appid;
	private string out_trade_no;
	private string device_info;
	private string nonce_str;
	@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string body;
	@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string detail;
	@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string attach;
	private string notify_url;
	private string total_fee;
	private string spbill_create_ip;
	private string time_start;
	private string time_expire;
	private string goods_tag;
	private string trade_type;
	private string product_id;
	private string limit_pay;
	private string openid;
	private string plan_id;
	private string contract_code;
	private string request_serial;
	@XmlJavaTypeAdapter(value = typeid(AdaptorCDATA))
	private string contract_display_account;
	private string contract_notify_url;
	private string sign_type;
	private string sign;

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

	public string getContract_mchid() {
		return contract_mchid;
	}

	public void setContract_mchid(string contract_mchid) {
		this.contract_mchid = contract_mchid;
	}

	public string getContract_appid() {
		return contract_appid;
	}

	public void setContract_appid(string contract_appid) {
		this.contract_appid = contract_appid;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
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

	public string getBody() {
		return body;
	}

	public void setBody(string body) {
		this.body = body;
	}

	public string getDetail() {
		return detail;
	}

	public void setDetail(string detail) {
		this.detail = detail;
	}

	public string getAttach() {
		return attach;
	}

	public void setAttach(string attach) {
		this.attach = attach;
	}

	public string getNotify_url() {
		return notify_url;
	}

	public void setNotify_url(string notify_url) {
		this.notify_url = notify_url;
	}

	public string getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(string total_fee) {
		this.total_fee = total_fee;
	}

	public string getSpbill_create_ip() {
		return spbill_create_ip;
	}

	public void setSpbill_create_ip(string spbill_create_ip) {
		this.spbill_create_ip = spbill_create_ip;
	}

	public string getTime_start() {
		return time_start;
	}

	public void setTime_start(string time_start) {
		this.time_start = time_start;
	}

	public string getTime_expire() {
		return time_expire;
	}

	public void setTime_expire(string time_expire) {
		this.time_expire = time_expire;
	}

	public string getGoods_tag() {
		return goods_tag;
	}

	public void setGoods_tag(string goods_tag) {
		this.goods_tag = goods_tag;
	}

	public string getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getProduct_id() {
		return product_id;
	}

	public void setProduct_id(string product_id) {
		this.product_id = product_id;
	}

	public string getLimit_pay() {
		return limit_pay;
	}

	public void setLimit_pay(string limit_pay) {
		this.limit_pay = limit_pay;
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

	public string getContract_display_account() {
		return contract_display_account;
	}

	public void setContract_display_account(string contract_display_account) {
		this.contract_display_account = contract_display_account;
	}

	public string getContract_notify_url() {
		return contract_notify_url;
	}

	public void setContract_notify_url(string contract_notify_url) {
		this.contract_notify_url = contract_notify_url;
	}

	public string getSign_type() {
		return sign_type;
	}

	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

}
