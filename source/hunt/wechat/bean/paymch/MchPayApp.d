module hunt.wechat.bean.paymch.MchPayApp;

//import com.alibaba.fastjson.annotation.JSONField;

class MchPayApp {

	private string appid;

	private string partnerid;

	private string prepayid;

	@JSONField(name="package")
	private string package_;

	private string noncestr;

	private string timestamp;

	private string sign;

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getPartnerid() {
		return partnerid;
	}

	public void setPartnerid(string partnerid) {
		this.partnerid = partnerid;
	}

	public string getPrepayid() {
		return prepayid;
	}

	public void setPrepayid(string prepayid) {
		this.prepayid = prepayid;
	}

	public string getPackage_() {
		return package_;
	}

	public void setPackage_(string package_) {
		this.package_ = package_;
	}

	public string getNoncestr() {
		return noncestr;
	}

	public void setNoncestr(string noncestr) {
		this.noncestr = noncestr;
	}

	public string getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(string timestamp) {
		this.timestamp = timestamp;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

}
