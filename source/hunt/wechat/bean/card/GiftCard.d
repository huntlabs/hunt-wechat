module hunt.wechat.bean.card.GiftCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Gift;

/**
 * 兑换券
 * 
 * 
 *
 */
class GiftCard : AbstractCard {

	private Gift gift;

	public this() {
		super("GIFT");
	}

	public Gift getGift() {
		return gift;
	}

	public void setGift(Gift gift) {
		this.gift = gift;
	}

}
