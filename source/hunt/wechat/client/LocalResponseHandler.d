module hunt.wechat.client.LocalResponseHandler;

public abstract class LocalResponseHandler{
	
	protected string uriId;
	
	protected long startTime = System.currentTimeMillis();

	public string getUriId() {
		return uriId;
	}

	public void setUriId(string uriId) {
		this.uriId = uriId;
	}
}
