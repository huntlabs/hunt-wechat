/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.AbstractStatistics;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－统计接口请求参数抽象类
 * 
 * 
 */
abstract class AbstractStatistics {

	/**
	 * 起始日期时间戳，最长时间跨度为30天，单位为秒
	 * 必填
	 */
	@JSONField(name = "begin_date")
	private Long beginDate;
	
	/**
	 * 结束日期时间戳，最长时间跨度为30天，单位为秒
	 * 必填
	 */
	@JSONField(name = "end_date")
	private Long endDate;


	/**
	 * 起始日期时间戳，单位为秒
	 * @return 起始日期时间戳
	 */
	public Long getBeginDate() {
		return beginDate;
	}

	/**
	 * 起始日期时间戳，最长时间跨度为30天，单位为秒
	 * 必填
	 * @param beginDate 起始日期时间戳
	 */
	public void setBeginDate(Long beginDate) {
		this.beginDate = beginDate;
	}

	/**
	 * 结束日期时间戳，单位为秒
	 * @return 结束日期时间戳
	 */
	public Long getEndDate() {
		return endDate;
	}

	/**
	 * 结束日期时间戳，最长时间跨度为30天，单位为秒
	 * 必填
	 * @param endDate 结束日期时间戳
	 */
	public void setEndDate(Long endDate) {
		this.endDate = endDate;
	}
}
