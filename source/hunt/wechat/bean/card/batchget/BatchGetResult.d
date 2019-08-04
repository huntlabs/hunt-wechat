module hunt.wechat.bean.card.batchget.BatchGetResult;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券管理－批量查询卡券列表－响应参数
 * 
 * 
 *
 */
class BatchGetResult : BaseResult {

	/**
	 * 卡券ID列表。
	 */
	@JSONField(name = "card_id_list")
	private string[] cardIdList;

	/**
	 * 该商户名下卡券ID总数。
	 */
	@JSONField(name = "total_num")
	private Integer totalNum;

	/**
	 * @return 卡券ID列表
	 */
	public string[] getCardIdList() {
		return cardIdList;
	}

	/**
	 * @param cardIdList 卡券ID列表
	 */
	public void setCardIdList(string[] cardIdList) {
		this.cardIdList = cardIdList;
	}

	/**
	 * @return 该商户名下卡券ID总数
	 */
	public Integer getTotalNum() {
		return totalNum;
	}

	/**
	 * @param totalNum 该商户名下卡券ID总数
	 */
	public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
	}
}
