module hunt.wechat.bean.card.landingpage.create.LandingPageCreateCard;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券发放－创建货架接口－请求参数－货架投放的卡券
 * 
 * 
 *
 */
class LandingPageCreateCard {

	/**
	 * 所要在页面投放的card_id
	 * 必填：是
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 缩略图url
	 * 必填：是
	 */
	@JSONField(name = "thumb_url")
	private string thumbUrl;

	/**
	 * 所要在页面投放的card_id
	 * 
	 * @return 投放的card_id
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 所要在页面投放的card_id
	 * 必填：是
	 * 
	 * @param cardId 投放的card_id
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 缩略图url
	 */
	public string getThumbUrl() {
		return thumbUrl;
	}
	
	/**
	 * 缩略图url
	 * 必填：是
	 * @param thumbUrl 缩略图url
	 */
	public void setThumbUrl(string thumbUrl) {
		this.thumbUrl = thumbUrl;
	}
}
