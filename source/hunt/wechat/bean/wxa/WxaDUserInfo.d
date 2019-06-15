module hunt.wechat.bean.wxa.WxaDUserInfo;

class WxaDUserInfo : WxaUserInfo{

	private string openId;

	private string unionId;

	private Watermark watermark;

	public string getOpenId() {
		return openId;
	}

	public void setOpenId(string openId) {
		this.openId = openId;
	}

	public string getUnionId() {
		return unionId;
	}

	public void setUnionId(string unionId) {
		this.unionId = unionId;
	}

	public Watermark getWatermark() {
		return watermark;
	}

	public void setWatermark(Watermark watermark) {
		this.watermark = watermark;
	}

}
