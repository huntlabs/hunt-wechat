module hunt.wechat.bean.card.code.get.CodeGetResultCard;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券核销－查询Code接口－响应参数－卡券信息
 * 
 * 
 *
 */
class CodeGetResultCard {

	/**
	 * 卡券ID
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 起始使用时间
	 */
	@JSONField(name = "begin_time")
	private Integer beginTime;
	
	/**
	 * 结束时间
	 */
	@JSONField(name = "end_time")
	private Integer endTime;

	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 起始使用时间
	 */
	public Integer getBeginTime() {
		return beginTime;
	}

	/**
	 * @param beginTime 起始使用时间
	 */
	public void setBeginTime(Integer beginTime) {
		this.beginTime = beginTime;
	}

	/**
	 * @return 结束时间
	 */
	public Integer getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime 结束时间
	 */
	public void setEndTime(Integer endTime) {
		this.endTime = endTime;
	}
}
