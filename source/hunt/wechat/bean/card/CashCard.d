module hunt.wechat.bean.card.CashCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Cash;

/**
 * 代金券
 * 
 * 
 *
 */
class CashCard : AbstractCard {

	private Cash cash;

	public this() {
		super("CASH");
	}

	public Cash getCash() {
		return cash;
	}

	public void setCash(Cash cash) {
		this.cash = cash;
	}

}
