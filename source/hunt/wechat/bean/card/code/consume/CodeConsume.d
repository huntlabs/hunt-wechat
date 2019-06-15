module hunt.wechat.bean.card.code.consume.CodeConsume;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券核销－核销Code接口－请求参数
 * 
 * @author Moyq5
 *
 */
class CodeConsume {
	
	/**
	 * 卡券ID。创建卡券时use_custom_code填写true时必填。非自定义Code不必填写。
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 需核销的Code码。
	 * 必填：是
	 */
	private string code;

	/**
	 * 卡券ID。创建卡券时use_custom_code填写true时必填。非自定义Code不必填写。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。创建卡券时use_custom_code填写true时必填。非自定义Code不必填写。
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 需核销的Code码
	 */
	public string getCode() {
		return code;
	}

	/**
	 * 需核销的Code码。
	 * 必填：是
	 * @param code 需核销的Code码
	 */
	public void setCode(string code) {
		this.code = code;
	}

}
