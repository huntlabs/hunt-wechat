module hunt.wechat.bean.paymch.PapayEntrustweb;

class PapayEntrustweb {

	private string mch_id;

	private string appid;

	private string plan_id;

	private string contract_code;

	private string request_serial;

	private string contract_display_account;

	private string notify_url;

	private string _version;

	private string timestamp;
	
	private string outerid;
	
	private string clientip;
	
	private string return_app;
	
	private string return_web;
	
	private string return_appid;
	
	private string sign;
	
	/*
	 * 以下字段为非必填项风控参数，建议商户填写，提高风险控制能力
	 * 2.8.25 版本中移除

	private string deviceid;

	private string mobile;

	private string email;

	private string qq;

	private string openid;

	private string creid;

	*/


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

	public string getNotify_url() {
		return notify_url;
	}

	public void setNotify_url(string notify_url) {
		this.notify_url = notify_url;
	}

	public string getVersion() {
		return _version;
	}

	public void setVersion(string _version) {
		this._version = _version;
	}

	public string getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(string timestamp) {
		this.timestamp = timestamp;
	}

	public string getOuterid() {
		return outerid;
	}

	public void setOuterid(string outerid) {
		this.outerid = outerid;
	}

	public string getClientip() {
		return clientip;
	}

	/**
	 * H5 签约填写
	 * @param clientip IP 必填
	 */
	public void setClientip(string clientip) {
		this.clientip = clientip;
	}

	public string getReturn_app() {
		return return_app;
	}

	/**
	 * APP 签约时填写
	 * @param return_app 3表示返回app, 不填则不返
	 */
	public void setReturn_app(string return_app) {
		this.return_app = return_app;
	}

	
	public string getReturn_web() {
		return return_web;
	}

	/**
	 * 公众号 签约时填写
	 * @param return_web 1表示返回签约页面的referrer url, 不填或获取不到referrer则不返回; 跳转referrer url时会自动带上参数from_wxpay=1
	 */
	public void setReturn_web(string return_web) {
		this.return_web = return_web;
	}

	public string getReturn_appid() {
		return return_appid;
	}

	/**
	 * H5 签约时填写
	 * @param return_appid 当指定该字段时，且商户模版标注商户具有指定返回app的权限时，签约成功将返回return_appid指定的app应用，如果不填且签约发起时的浏览器UA可被微信识别，则跳转到浏览器，否则留在微信
	 */
	public void setReturn_appid(string return_appid) {
		this.return_appid = return_appid;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}
	
}
