module hunt.wechat.bean.qrcode.QrcodeTicket;

import hunt.wechat.bean.BaseResult;

/**
 * 二维码 ticket
 * 
 *
 */
class QrcodeTicket : BaseResult{

	private string ticket;

	private Integer expire_seconds;

	private string url;

	public string getTicket() {
		return ticket;
	}

	public void setTicket(string ticket) {
		this.ticket = ticket;
	}

	public Integer getExpire_seconds() {
		return expire_seconds;
	}

	public void setExpire_seconds(Integer expireSeconds) {
		expire_seconds = expireSeconds;
	}

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}

}
