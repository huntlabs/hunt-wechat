module hunt.wechat.bean.card.qrcode.create.ActionInfoMultipleCard;

import hunt.collection.List;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 
 * @author Moyq5
 *
 */
class ActionInfoMultipleCard {

	@JSONField(name = "card_list")
	List!(ActionInfoMultipleCardItem) cardList;

	public List!(ActionInfoMultipleCardItem) getCardList() {
		return cardList;
	}

	public void setCardList(List!(ActionInfoMultipleCardItem) cardList) {
		this.cardList = cardList;
	}
}
