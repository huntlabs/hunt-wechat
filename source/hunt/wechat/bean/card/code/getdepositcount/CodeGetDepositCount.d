module hunt.wechat.bean.card.code.getdepositcount.CodeGetDepositCount;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 投放卡券－查询导入code数目接口－请求参数
 * 
 * 
 *
 */
class CodeGetDepositCount {
	
	/**
	 * 进行导入code的卡券ID。
	 * 必填：是
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * 进行导入code的卡券ID。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	
	/**
	 * 进行导入code的卡券ID。
	 * 必填：是
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
}
