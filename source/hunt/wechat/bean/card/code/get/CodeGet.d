module hunt.wechat.bean.card.code.get.CodeGet;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券核销－查询Code接口－请求参数
 * 
 * @author Moyq5
 *
 */
class CodeGet {
	
	/**
	 * 卡券ID代表一类卡券。自定义code卡券必填。
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 单张卡券的唯一标准。
	 * 必填：是
	 */
	private string code;
	
	/**
	 * 是否校验code核销状态，填入true和false时的code异常状态返回数据不同。
	 * 必填：否
	 */
	@JSONField(name = "check_consume")
	private Boolean checkConsume;

	/**
	 * 卡券ID代表一类卡券。自定义code卡券必填。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID代表一类卡券。自定义code卡券必填。
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 单张卡券的唯一标准
	 */
	public string getCode() {
		return code;
	}

	/**
	 * 单张卡券的唯一标准。
	 * 必填：是
	 * @param code 单张卡券的唯一标准
	 */
	public void setCode(string code) {
		this.code = code;
	}

	/**
	 * 是否校验code核销状态，填入true和false时的code异常状态返回数据不同。
	 * @return 是否校验code核销状态
	 */
	public Boolean getCheckConsume() {
		return checkConsume;
	}

	/**
	 * 是否校验code核销状态，填入true和false时的code异常状态返回数据不同。
	 * 必填：否
	 * @param checkConsume 是否校验code核销状态
	 */
	public void setCheckConsume(Boolean checkConsume) {
		this.checkConsume = checkConsume;
	}
}
