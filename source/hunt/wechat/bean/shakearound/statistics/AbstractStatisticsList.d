/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.AbstractStatisticsList;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－（批量查询）统计接口请求参数抽象类
 * 
 * 
 */
abstract class AbstractStatisticsList {

	/**
	 * 指定查询日期时间戳，单位为秒
	 * 必填
	 */
	private Long date;
	
	/**
	 * 指定查询的结果页序号；返回结果按摇周边人数降序排序，每50条记录为一页 
	 * 必填
	 */
	@JSONField(name = "page_index")
	private Integer pageIndex;

	/**
	 * 查询日期时间戳，单位为秒
	 * @return 查询日期时间戳
	 */
	public Long getDate() {
		return date;
	}

	/**
	 * 指定查询日期时间戳，单位为秒
	 * 必填
	 * @param date 查询日期时间戳
	 */
	public void setDate(Long date) {
		this.date = date;
	}

	/**
	 * 查询的结果页序号；返回结果按摇周边人数降序排序，每50条记录为一页 
	 * @return 查询的结果页序号
	 */
	public Integer getPageIndex() {
		return pageIndex;
	}

	/**
	 * 指定查询的结果页序号；返回结果按摇周边人数降序排序，每50条记录为一页 
	 * 必填
	 * @param pageIndex 查询的结果页序号
	 */
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
}
