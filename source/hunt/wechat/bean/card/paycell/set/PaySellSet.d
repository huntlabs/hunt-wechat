module hunt.wechat.bean.card.paycell.set.PaySellSet;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信卡券－设置买单－提交对象
 * 
 * 
 *
 */
class PaySellSet {

	/**
	 * 卡券ID。
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 是否开启买单功能
	 */
	@JSONField(name = "is_open")
	private Boolean isOpen;

	/**
	 * 卡券ID。
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * 是否开启买单功能
	 */
	public Boolean getIsOpen() {
		return isOpen;
	}

	/**
	 * 是否开启买单功能
	 */
	public void setIsOpen(Boolean isOpen) {
		this.isOpen = isOpen;
	}
}
