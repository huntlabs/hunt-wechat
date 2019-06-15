module hunt.wechat.bean.card.code.unavailable.CodeUnavailable;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券管理－设置卡券失效接口－请求参数
 * 
 * @author Moyq5
 *
 */
class CodeUnavailable {

	/**
	 * 卡券ID。自定义Code码卡券为必填。
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 设置失效的Code码。
	 * 必填：是
	 */
	private string code;

	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。自定义Code码卡券为必填。
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 设置失效的Code码
	 */
	public string getCode() {
		return code;
	}

	/**
	 * 设置失效的Code码。
	 * 必填：是
	 * @param code 设置失效的Code码
	 */
	public void setCode(string code) {
		this.code = code;
	}
}
