module hunt.wechat.bean.card.qrcode.create.ActionInfoMultiple;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 
 * @author Moyq5
 *
 */
class ActionInfoMultiple {

	@JSONField(name = "multiple_card")
	private ActionInfoMultipleCard multipleCard;

	public ActionInfoMultipleCard getMultipleCard() {
		return multipleCard;
	}

	public void setMultipleCard(ActionInfoMultipleCard multipleCard) {
		this.multipleCard = multipleCard;
	}
}
