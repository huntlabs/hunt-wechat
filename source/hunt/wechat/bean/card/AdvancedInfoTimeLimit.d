module hunt.wechat.bean.card.AdvancedInfoTimeLimit;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 使用时段限制
 * 
 * 
 *
 */
class AdvancedInfoTimeLimit {

	/**
	 * 限制类型枚举值：支持填入 
	 * MONDAY 周一 
	 * TUESDAY 周二 
	 * WEDNESDAY 周三 
	 * THURSDAY 周四 
	 * FRIDAY 周五 
	 * SATURDAY 周六 
	 * SUNDAY 周日 
	 * 此处只控制显示， 不控制实际使用逻辑，不填默认不显示 
	 */
	private string type;

	/***
	 * 当前type类型下的起始时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了10，则此处表示周一 10:00可用
	 */
	@JSONField(name = "begin_hour")
	private Integer beginHour;

	/**
	 * 当前type类型下的结束时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了20，则此处表示周一 10:00-20:00可用
	 */
	@JSONField(name = "end_hour")
	private Integer endHour;

	/**
	 * 当前type类型下的起始时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59可用
	 */
	@JSONField(name = "begin_minute")
	private Integer beginMinute;

	/**
	 * 当前type类型下的结束时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59-00:59可用
	 */
	@JSONField(name = "end_minute")
	private Integer endMinute;

	/**
	 * 限制类型枚举值：支持填入 
	 * MONDAY 周一 
	 * TUESDAY 周二 
	 * WEDNESDAY 周三 
	 * THURSDAY 周四 
	 * FRIDAY 周五 
	 * SATURDAY 周六 
	 * SUNDAY 周日 
	 * 此处只控制显示， 不控制实际使用逻辑，不填默认不显示 
	 */
	public string getType() {
		return type;
	}

	/**
	 * 限制类型枚举值：支持填入 
	 * MONDAY 周一 
	 * TUESDAY 周二 
	 * WEDNESDAY 周三 
	 * THURSDAY 周四 
	 * FRIDAY 周五 
	 * SATURDAY 周六 
	 * SUNDAY 周日 
	 * 此处只控制显示， 不控制实际使用逻辑，不填默认不显示
	 */
	public void setType(string type) {
		this.type = type;
	}

	/***
	 * 当前type类型下的起始时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了10，则此处表示周一 10:00可用
	 */
	public Integer getBeginHour() {
		return beginHour;
	}

	/***
	 * 当前type类型下的起始时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了10，则此处表示周一 10:00可用
	 */
	public void setBeginHour(Integer beginHour) {
		this.beginHour = beginHour;
	}

	/**
	 * 当前type类型下的结束时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了20，则此处表示周一 10:00-20:00可用
	 */
	public Integer getEndHour() {
		return endHour;
	}

	/**
	 * 当前type类型下的结束时间（小时），
	 * 如当前结构体内填写了MONDAY，此处填写了20，则此处表示周一 10:00-20:00可用
	 */
	public void setEndHour(Integer endHour) {
		this.endHour = endHour;
	}

	/**
	 * 当前type类型下的起始时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59可用
	 */
	public Integer getBeginMinute() {
		return beginMinute;
	}

	/**
	 * 当前type类型下的起始时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59可用
	 */
	public void setBeginMinute(Integer beginMinute) {
		this.beginMinute = beginMinute;
	}

	/**
	 * 当前type类型下的结束时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59-00:59可用
	 */
	public Integer getEndMinute() {
		return endMinute;
	}

	/**
	 * 当前type类型下的结束时间（分钟），
	 * 如当前结构体内填写了MONDAY，begin_hour填写10，此处填写了59，则此处表示周一 10:59-00:59可用
	 */
	public void setEndMinute(Integer endMinute) {
		this.endMinute = endMinute;
	}
}
