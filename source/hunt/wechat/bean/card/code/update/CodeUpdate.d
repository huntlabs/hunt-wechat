module hunt.wechat.bean.card.code.update.CodeUpdate;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券管理－更改Code接口－请求参数
 * 
 * 
 *
 */
class CodeUpdate {

	/**
	 * 卡券ID。自定义Code码卡券为必填。
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 需变更的Code码。
	 * 必填：是
	 */
	private string code;
	
	/**
	 * 变更后的有效Code码。
	 * 必填：是，长度：64
	 */
	@JSONField(name = "new_code")
	private string newCode;

	/**
	 * 卡券ID。自定义Code码卡券为必填。
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
	 * @return 需变更的Code码
	 */
	public string getCode() {
		return code;
	}

	/**
	 * 需变更的Code码。
	 * 必填：是
	 * @param code 需变更的Code码
	 */
	public void setCode(string code) {
		this.code = code;
	}

	/**
	 * @return 变更后的有效Code码
	 */
	public string getNewCode() {
		return newCode;
	}

	/**
	 * 变更后的有效Code码。
	 * 必填：是，长度：64
	 * @param newCode 变更后的有效Code码
	 */
	public void setNewCode(string newCode) {
		this.newCode = newCode;
	}
}
