module hunt.wechat.bean.card.selfconsumecelll.set.SelfConsumeCellSet;

import hunt.wechat.bean.card.paycell.set.PaySellSet;

/**
 * 微信卡券－设置自助核销接口－请求参数
 * 
 * @author Moyq5
 *
 */
class SelfConsumeCellSet : PaySellSet {

	override
	public string getCardId() {
		return super.getCardId();
	}

	override
	public void setCardId(string cardId) {
		super.setCardId(cardId);
	}

	/**
	 * 是否开启自助核销功能
	 */
	override
	public Boolean getIsOpen() {
		return super.getIsOpen();
	}

	/**
	 * 是否开启自助核销功能
	 */
	override
	public void setIsOpen(Boolean isOpen) {
		super.setIsOpen(isOpen);
	}

}
