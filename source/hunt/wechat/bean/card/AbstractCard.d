module hunt.wechat.bean.card.AbstractCard;

// //import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券抽象类，公众属性
 * 
 * 
 *
 */
class AbstractCard {
	
	/**
	 * 卡券类型
	 */
	// @JSONField(name = "card_type")
	private string cardType;
	
	public this() {
	}
	
	public this(string cardType) {
		this.cardType = cardType;
	}
	
	/**
	 * @return 卡券类型
	 */
	public string getCardType() {
		return cardType;
	}

	/**
	 * @param cardType 卡券类型
	 */
	public void setCardType(string cardType) {
		this.cardType = cardType;
	}
}
