module hunt.wechat.bean.card.qrcode.create.QrCodeCreateResult;

import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券投放－创建二维码（ticket）－响应参数
 * 
 * 
 *
 */
class QrCodeCreateResult : BaseResult {

	/**
	 * 获取的二维码ticket，凭借此ticket调用通过ticket换取二维码接口可以在有效时间内换取二维码。
	 */
	private string ticket;

	/**
	 * 二维码的有效时间，范围是60 ~ 1800秒。不填默认为365天有效
	 */
	@JSONField(name = "expire_seconds")
	private Integer expireSeconds;

	/**
	 * 二维码图片解析后的地址，开发者可根据该地址自行生成需要的二维码图片
	 */
	private string url;

	/**
	 * 二维码显示地址，点击后跳转二维码页面
	 */
	@JSONField(name = "show_qrcode_url")
	private string showQrcodeUrl;

	/**
	 * 获取的二维码ticket，凭借此ticket调用通过ticket换取二维码接口可以在有效时间内换取二维码。
	 * @return 二维码ticket
	 */
	public string getTicket() {
		return ticket;
	}

	/**
	 * @param ticket 二维码ticket
	 */
	public void setTicket(string ticket) {
		this.ticket = ticket;
	}

	/**
	 * 二维码的有效时间，范围是60 ~ 1800秒。不填默认为365天有效
	 * @return 二维码的有效时间
	 */
	public Integer getExpireSeconds() {
		return expireSeconds;
	}

	/**
	 * 二维码的有效时间，范围是60 ~ 1800秒。不填默认为365天有效
	 * @param expireSeconds 二维码的有效时间
	 */
	public void setExpireSeconds(Integer expireSeconds) {
		this.expireSeconds = expireSeconds;
	}

	/**
	 * 二维码图片解析后的地址，开发者可根据该地址自行生成需要的二维码图片
	 * @return 二维码图片解析后的地址
	 */
	public string getUrl() {
		return url;
	}

	/**
	 * 二维码图片解析后的地址，开发者可根据该地址自行生成需要的二维码图片
	 * @param url 二维码图片解析后的地址
	 */
	public void setUrl(string url) {
		this.url = url;
	}

	/**
	 * 二维码显示地址，点击后跳转二维码页面
	 * @return 二维码显示地址
	 */
	public string getShowQrcodeUrl() {
		return showQrcodeUrl;
	}

	/**
	 * 二维码显示地址，点击后跳转二维码页面
	 * @param showQrcodeUrl 二维码显示地址
	 */
	public void setShowQrcodeUrl(string showQrcodeUrl) {
		this.showQrcodeUrl = showQrcodeUrl;
	}
}
