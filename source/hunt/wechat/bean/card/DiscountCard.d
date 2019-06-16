module hunt.wechat.bean.card.DiscountCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Discount;

/**
 * 折扣券
 * 
 * 
 *
 */
class DiscountCard : AbstractCard {

	private Discount discount;

	public this() {
		super("DISCOUNT");
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

}
