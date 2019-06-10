module hunt.wechat.bean.card.GiftCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Gift;

/**
 * 兑换券
 * 
 * @author Moyq5
 *
 */
public class GiftCard : AbstractCard {

	private Gift gift;

	public GiftCard() {
		super("GIFT");
	}

	public Gift getGift() {
		return gift;
	}

	public void setGift(Gift gift) {
		this.gift = gift;
	}

}
