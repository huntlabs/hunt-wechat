module hunt.wechat.bean.card.create.Create;

import hunt.wechat.bean.card.AbstractCard;

/**
 * 创建卡券－请求参数
 * 
 * 
 *
 * @param <T> 可以是CashCard、DiscountCard、GeneralCouponCard、GiftCard、GrouponCard
 */
class Creat(T : AbstractCard) {

	private T card;

	public T getCard() {
		return card;
	}

	public void setCard(T card) {
		this.card = card;
	}
}
