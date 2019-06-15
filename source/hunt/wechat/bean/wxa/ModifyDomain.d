module hunt.wechat.bean.wxa.ModifyDomain;

class ModifyDomain {

	private string action; // add添加, delete删除, set覆盖, get获取。当参数是get时不需要填四个域名字段。

	private string[] requestdomain; // request合法域名，当action参数是get时不需要此字段。
	private string[] wsrequestdomain; // socket合法域名，当action参数是get时不需要此字段。
	private string[] uploaddomain; // uploadFile合法域名，当action参数是get时不需要此字段。
	private string[] downloaddomain; // downloadFile合法域名，当action参数是get时不需要此字段。

	public ModifyDomain() {
	}

	public ModifyDomain(string action, string[] requestdomain, string[] wsrequestdomain, string[] uploaddomain, string[] downloaddomain) {
		this.action = action;
		this.requestdomain = requestdomain;
		this.wsrequestdomain = wsrequestdomain;
		this.uploaddomain = uploaddomain;
		this.downloaddomain = downloaddomain;
	}

	public string getAction() {
		return action;
	}

	public void setAction(string action) {
		this.action = action;
	}

	public string[] getRequestdomain() {
		return requestdomain;
	}

	public void setRequestdomain(string[] requestdomain) {
		this.requestdomain = requestdomain;
	}

	public string[] getWsrequestdomain() {
		return wsrequestdomain;
	}

	public void setWsrequestdomain(string[] wsrequestdomain) {
		this.wsrequestdomain = wsrequestdomain;
	}

	public string[] getUploaddomain() {
		return uploaddomain;
	}

	public void setUploaddomain(string[] uploaddomain) {
		this.uploaddomain = uploaddomain;
	}

	public string[] getDownloaddomain() {
		return downloaddomain;
	}

	public void setDownloaddomain(string[] downloaddomain) {
		this.downloaddomain = downloaddomain;
	}

}
