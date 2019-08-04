/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.pagelist.StatisticsPageListResultDataPage;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.shakearound.statistics.AbstractStatisticsResultData;

/**
 * 微信摇一摇周边－批量查询页面统计数据接口－响应参数－统计数据－页面统计数据
 * 
 * 
 */
class StatisticsPageListResultDataPage : AbstractStatisticsResultData {

	/**
	 * 页面ID
	 */
	@JSONField(name = "page_id")
	private Integer pageId;

	/**
	 * @return 页面ID
	 */
	public Integer getPageId() {
		return pageId;
	}

	/**
	 * @param pageId 页面ID
	 */
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
}
