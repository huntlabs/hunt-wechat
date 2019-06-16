module hunt.wechat.bean.card.modifystock.ModifyStock;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券管理－修改库存接口－请求参数
 * 
 * 
 *
 */
class ModifyStock {

	/**
	 * 卡券ID。
	 * 必填：是
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 增加多少库存，支持不填或填0。
	 */
	@JSONField(name = "increase_stock_value")
	private Integer increaseStockValue;
	
	/**
	 * 减少多少库存，可以不填或填0。
	 */
	@JSONField(name = "reduce_stock_value")
	private Integer reduceStockValue;
	
	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}
	
	/**
	 * 卡券ID。
	 * 必填：是
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
	
	/**
	 * 增加多少库存，支持不填或填0。
	 * @return 增加多少库存
	 */
	public Integer getIncreaseStockValue() {
		return increaseStockValue;
	}
	
	/**
	 * 增加多少库存，支持不填或填0。
	 * @param increaseStockValue 增加多少库存
	 */
	public void setIncreaseStockValue(Integer increaseStockValue) {
		this.increaseStockValue = increaseStockValue;
	}
	
	/**
	 * 减少多少库存，可以不填或填0。
	 * @return 减少多少库存
	 */
	public Integer getReduceStockValue() {
		return reduceStockValue;
	}
	
	/**
	 * 减少多少库存，可以不填或填0。
	 * @param reduceStockValue 减少多少库存
	 */
	public void setReduceStockValue(Integer reduceStockValue) {
		this.reduceStockValue = reduceStockValue;
	}
}
