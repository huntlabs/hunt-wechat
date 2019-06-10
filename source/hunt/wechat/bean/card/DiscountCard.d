module hunt.wechat.bean.card.DiscountCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Discount;

/**
 * 折扣券
 * 
 * @author Moyq5
 *
 */
public class DiscountCard : AbstractCard {

	private Discount discount;

	public DiscountCard() {
		super("DISCOUNT");
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

}
