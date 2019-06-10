module hunt.wechat.bean.card.CashCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Cash;

/**
 * 代金券
 * 
 * @author Moyq5
 *
 */
public class CashCard : AbstractCard {

	private Cash cash;

	public CashCard() {
		super("CASH");
	}

	public Cash getCash() {
		return cash;
	}

	public void setCash(Cash cash) {
		this.cash = cash;
	}

}
