module hunt.wechat.bean.wxa.WxaUserInfoResult;

class WxaUserInfoResult {

	private WxaUserInfo userInfo;

	private string rawData;

	private string signature;

	private string encryptedData;

	private string iv;
	
	private string errMsg;

	public WxaUserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(WxaUserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public string getRawData() {
		return rawData;
	}

	public void setRawData(string rawData) {
		this.rawData = rawData;
	}

	public string getSignature() {
		return signature;
	}

	public void setSignature(string signature) {
		this.signature = signature;
	}

	public string getEncryptedData() {
		return encryptedData;
	}

	public void setEncryptedData(string encryptedData) {
		this.encryptedData = encryptedData;
	}

	public string getIv() {
		return iv;
	}

	public void setIv(string iv) {
		this.iv = iv;
	}

	public string getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(string errMsg) {
		this.errMsg = errMsg;
	}

}
