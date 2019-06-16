module hunt.wechat.bean.card.batchget.BatchGet;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券管理－批量查询卡券列表－请求参数
 * 
 * 
 *
 */
class BatchGet {

	/**
	 * 查询卡列表的起始偏移量，从0开始，即offset: 5是指从从列表里的第六个开始读取。
	 * 必填：是
	 */
	private Integer offset;
	
	/**
	 * 需要查询的卡片的数量（数量最大50）。
	 * 必填：是
	 */
	private Integer count;
	
	/**
	 * 支持开发者拉出指定状态的卡券列表：
	 * “CARD_STATUS_NOT_VERIFY”,待审核；
	 * “CARD_STATUS_VERIFY_FAIL”,审核失败；
	 * “CARD_STATUS_VERIFY_OK”，通过审核；
	 * “CARD_STATUS_USER_DELETE”，卡券被商户删除；
	 * “CARD_STATUS_DISPATCH”，在公众平台投放过的卡券；
	 * 必填：否
	 */
	@JSONField(name = "status_list")
	private string[] statusList;

	/**
	 * 查询卡列表的起始偏移量，从0开始，即offset: 5是指从从列表里的第六个开始读取。
	 * @return 查询卡列表的起始偏移量
	 */
	public Integer getOffset() {
		return offset;
	}

	/**
	 * 查询卡列表的起始偏移量，从0开始，即offset: 5是指从从列表里的第六个开始读取。
	 * 必填：是
	 * @param offset 查询卡列表的起始偏移量
	 */
	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	/**
	 * 需要查询的卡片的数量（数量最大50）。
	 * @return 需要查询的卡片的数量
	 */
	public Integer getCount() {
		return count;
	}

	/**
	 * 需要查询的卡片的数量（数量最大50）。
	 * 必填：是
	 * @param count 需要查询的卡片的数量
	 */
	public void setCount(Integer count) {
		this.count = count;
	}

	/**
	 * 支持开发者拉出指定状态的卡券列表：
	 * “CARD_STATUS_NOT_VERIFY”,待审核；
	 * “CARD_STATUS_VERIFY_FAIL”,审核失败；
	 * “CARD_STATUS_VERIFY_OK”，通过审核；
	 * “CARD_STATUS_USER_DELETE”，卡券被商户删除；
	 * “CARD_STATUS_DISPATCH”，在公众平台投放过的卡券；
	 * @return 要查询的卡券状态列表
	 */
	public string[] getStatusList() {
		return statusList;
	}

	/**
	 * * 支持开发者拉出指定状态的卡券列表：
	 * “CARD_STATUS_NOT_VERIFY”,待审核；
	 * “CARD_STATUS_VERIFY_FAIL”,审核失败；
	 * “CARD_STATUS_VERIFY_OK”，通过审核；
	 * “CARD_STATUS_USER_DELETE”，卡券被商户删除；
	 * “CARD_STATUS_DISPATCH”，在公众平台投放过的卡券；
	 * 必填：否
	 * @param statusList 要查询的卡券状态列表
	 */
	public void setStatusList(string[] statusList) {
		this.statusList = statusList;
	}
}
