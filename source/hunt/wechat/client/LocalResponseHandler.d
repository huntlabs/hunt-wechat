module hunt.wechat.client.LocalResponseHandler;

abstract class LocalResponseHandler{
	
	protected string uriId;
	
	protected long startTime = DateTimeHelper.currentTimeMillis();

	public string getUriId() {
		return uriId;
	}

	public void setUriId(string uriId) {
		this.uriId = uriId;
	}
}
