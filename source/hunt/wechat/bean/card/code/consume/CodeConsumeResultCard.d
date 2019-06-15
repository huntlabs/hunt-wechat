module hunt.wechat.bean.card.code.consume.CodeConsumeResultCard;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券核销－核销Code接口－响应参数－卡信息
 * 
 * @author Moyq5
 *
 */
class CodeConsumeResultCard {

	/**
	 * 卡券ID
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * 卡券ID
	 * @return
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID
	 * @param cardId
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

}
