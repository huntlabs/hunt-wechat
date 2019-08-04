module hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfo;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 拉取卡券概况数据接口－请求参数
 * 
 * 特别注意： 
 * 1. 查询时间区间需<=62天，否则报错；
 * 2. 传入时间格式需严格参照示例填写”2015-06-15”，否则报错;
 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
 * 
 * 
 *
 */
class BizuinInfo {

	/**
	 * 查询数据的起始时间。格式：2015-06-15
	 * 必填：是
	 */
	@JSONField(name = "begin_date")
	private string beginDate;

	/**
	 * 查询数据的截至时间。格式：2015-06-30
	 * 必填：是
	 */
	@JSONField(name = "end_date")
	private string endDate;

	/**
	 * 卡券来源，0为公众平台创建的卡券数据、1是API创建的卡券数据
	 * 必填：是
	 */
	@JSONField(name = "cond_source")
	private Integer condSource;

	/**
	 * 查询数据的起始时间。格式：2015-06-15
	 * @return 查询数据的起始时间
	 */
	public string getBeginDate() {
		return beginDate;
	}

	/**
	 * 查询数据的起始时间。格式：2015-06-15
	 * 必填：是
	 * @param beginDate 查询数据的起始时间
	 */
	public void setBeginDate(string beginDate) {
		this.beginDate = beginDate;
	}

	/**
	 * 查询数据的截至时间。格式：2015-06-30
	 * @return 查询数据的截至时间
	 */
	public string getEndDate() {
		return endDate;
	}

	/**
	 * 查询数据的截至时间。格式：2015-06-30
	 * 必填：是
	 * @param endDate 查询数据的截至时间
	 */
	public void setEndDate(string endDate) {
		this.endDate = endDate;
	}

	/**
	 * 卡券来源，0为公众平台创建的卡券数据、1是API创建的卡券数据
	 * @return 卡券来源
	 */
	public Integer getCondSource() {
		return condSource;
	}

	/**
	 * 卡券来源，0为公众平台创建的卡券数据、1是API创建的卡券数据
	 * 必填：是
	 * @param condSource 卡券来源
	 */
	public void setCondSource(Integer condSource) {
		this.condSource = condSource;
	}
}
