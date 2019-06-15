module hunt.wechat.bean.paymch.WxaEntrustwebData;

import hunt.util.Serialize;


/**
 * 
 * 微信代扣小程序纯签约包装数据
 * @author LiYi
 *
 */
class WxaEntrustwebData : Serializable {

	/**
	 * 
	 */

	private string appId;

	private PapayEntrustweb extraData;

	private string path;

	public string getAppId() {
		return appId;
	}

	public void setAppId(string appId) {
		this.appId = appId;
	}

	public PapayEntrustweb getExtraData() {
		return extraData;
	}

	public void setExtraData(PapayEntrustweb extraData) {
		this.extraData = extraData;
	}

	public string getPath() {
		return path;
	}

	public void setPath(string path) {
		this.path = path;
	}

}
