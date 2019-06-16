module hunt.wechat.bean.card.code.deposit.CodeDeposit;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 投放卡券－导入code接口－请求参数
 * 
 * 
 *
 */
class CodeDeposit {

	/**
	 * 需要进行导入code的卡券ID。
	 * 必填：是
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 需导入微信卡券后台的自定义code，上限为100个。
	 * 必填：是
	 */
	private string[] code;
	
	/**
	 * 需要进行导入code的卡券ID。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}
	
	/**
	 * 需要进行导入code的卡券ID。
	 * 必填：是
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
	
	/**
	 * 需导入微信卡券后台的自定义code，上限为100个。
	 * @return 自定义code
	 */
	public string[] getCode() {
		return code;
	}
	
	/**
	 * 需导入微信卡券后台的自定义code，上限为100个。
	 * 必填：是
	 * @param code 自定义code
	 */
	public void setCode(string[] code) {
		this.code = code;
	}
}
