/**
 * 
 */
module hunt.wechat.bean.card.update.AbstractUpdate;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信卡券－卡券管理－更改卡券信息接口－请求参数－抽象类
 * 
 * 
 */
abstract class AbstractUpdate {

	/**
	 * 卡券ID，必填
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * @param 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
}
