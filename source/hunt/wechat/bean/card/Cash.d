module hunt.wechat.bean.card.Cash;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 代金券
 * 
 * 
 *
 */
class Cash : AbstractInfo {

	/**
	 * 表示起用金额（单位为分）,如果无起用门槛则填0。
	 * 添加必填，不支持修改  
	 */
	@JSONField(name = "least_cost")
	private Integer leastCost;
	
	/**
	 * 表示减免金额。（单位为分）
	 * 添加必填，不支持修改  
	 */
	@JSONField(name = "reduce_cost")
	private Integer reduceCost;

	/**
	 * 表示起用金额（单位为分）,如果无起用门槛则填0。
	 */
	public Integer getLeastCost() {
		return leastCost;
	}

	/**
	 * 表示起用金额（单位为分）,如果无起用门槛则填0。
	 * 添加必填，不支持修改  
	 */
	public void setLeastCost(Integer leastCost) {
		this.leastCost = leastCost;
	}

	/**
	 * 表示减免金额。（单位为分）
	 */
	public Integer getReduceCost() {
		return reduceCost;
	}

	/**
	 * 表示减免金额。（单位为分）
	 * 添加必填，不支持修改 
	 */
	public void setReduceCost(Integer reduceCost) {
		this.reduceCost = reduceCost;
	}
}
