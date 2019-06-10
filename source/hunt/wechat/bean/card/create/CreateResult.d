module hunt.wechat.bean.card.create.CreateResult;

import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券信息－添加结果
 * 
 * @author Moyq5
 *
 */
public class CreateResult : BaseResult {

	/**
	 * 卡券ID
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
}
