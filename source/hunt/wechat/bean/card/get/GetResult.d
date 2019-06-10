module hunt.wechat.bean.card.get.GetResult;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.card.AbstractCard;

/**
 * 
 * @author Moyq5
 *
 * @param <T>可以是CreateCash、CreateDiscount、CreateGeneralCoupon、CreateGift、CreateGroupon
 */
public class GetResult<T : AbstractCard> : BaseResult {

	private T card;

	public T getCard() {
		return card;
	}

	public void setCard(T card) {
		this.card = card;
	}
}