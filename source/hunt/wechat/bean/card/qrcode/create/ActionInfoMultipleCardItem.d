module hunt.wechat.bean.card.qrcode.create.ActionInfoMultipleCardItem;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 
 * 
 *
 */
class ActionInfoMultipleCardItem {

	/**
	 * 卡券ID。
	 * 必填：否
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 卡券Code码,use_custom_code字段为true的卡券必须填写，非自定义code不必填写。
	 */
	private string code;

	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。
	 * 必填：否
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 卡券Code码
	 */
	public string getCode() {
		return code;
	}

	/**
	 * 卡券Code码,use_custom_code字段为true的卡券必须填写，非自定义code不必填写。
	 * @param code 卡券Code码
	 */
	public void setCode(string code) {
		this.code = code;
	}
}
