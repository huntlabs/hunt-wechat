module hunt.wechat.bean.wxa.ModifyDomainResult;

import hunt.wechat.bean.BaseResult;

public class ModifyDomainResult : BaseResult{

	//以下字段仅在get时返回
	private string[] requestdomain; // request合法域名
	private string[] wsrequestdomain; // socket合法域名
	private string[] uploaddomain; // uploadFile合法域名
	private string[] downloaddomain; // downloadFile合法域名

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
