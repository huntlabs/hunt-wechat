/**
 * 
 */
module hunt.wechat.bean.shakearound.lottery.querylottery.LotteryQueryLotteryResultResult;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－摇一摇红包－红包查询接口－响应参数－红包信息
 * 注意：调用SetPrizeBucket录入红包次数超过3000次的，或红包总数超过1万个的活动，
 * 目前暂不支持expired_prizes, drawed_prizes, available_prizes, expired_value, 
 * drawed_value, available_value这6个字段的查询。
 * 需要查询时，可以通过邮箱zhoubian@tencent.com联系我们，也可加入开发者QQ交流群390582489。
 * 
 * 
 */
class LotteryQueryLotteryResultResult {

	/**
	 * 抽奖活动名称（选择使用模板时，也作为摇一摇消息主标题），最长6个汉字，12个英文字母。
	 */
	private string title;
	
	/**
	 * 抽奖活动描述（选择使用模板时，也作为摇一摇消息副标题），最长7个汉字，14个英文字母。
	 */
	private string desc;
	
	/**
	 * 抽奖开关。0关闭，1开启，默认为1
	 */
	private Integer onoff;
	
	/**
	 * 抽奖活动开始时间，unix时间戳，单位秒
	 */
	@JSONField(name = "begin_time")
	private Long beginTime;
	
	/**
	 * 抽奖活动结束时间，unix时间戳，单位秒，红包活动有效期最长为91天
	 */
	@JSONField(name = "expire_time")
	private Long expireTime;
	
	/**
	 * 红包提供商户公众号的appid
	 */
	@JSONField(name = "sponsor_appid")
	private string sponsorAppId;
	
	/**
	 * 创建活动的开发者appid
	 */
	@JSONField(name = "appid")
	private string appId;
	
	/**
	 * 已录入的红包总数
	 */
	@JSONField(name = "prize_count")
	private Long prizeCount;
	
	/**
	 * 创建活动时预设的录入红包ticket数量上限
	 */
	@JSONField(name = "prize_count_limit")
	private Long prizeCountLimit;
	
	/**
	 * 红包关注界面后可以跳转到第三方自定义的页面
	 */
	@JSONField(name = "jump_url")
	private string jumpUrl;
	
	/**
	 * 过期红包ticket数量
	 */
	@JSONField(name = "expired_prizes")
	private Long expiredPrizes;
	
	/**
	 * 已发放的红包ticket数量
	 */
	@JSONField(name = "drawed_prizes")
	private Long drawedPrizes;
	
	/**
	 * 可用的红包ticket数量
	 */
	@JSONField(name = "available_prizes")
	private Long availablePrizes;
	
	/**
	 * 已过期的红包金额总和
	 */
	@JSONField(name = "expired_value")
	private Long expiredValue;
	
	/**
	 * 已发放的红包金额总和
	 */
	@JSONField(name = "drawed_value")
	private Long drawedValue;
	
	/**
	 * 可用的红包金额总和
	 */
	@JSONField(name = "available_value")
	private Long availableValue;

	/**
	 * 抽奖活动名称（选择使用模板时，也作为摇一摇消息主标题），最长6个汉字，12个英文字母。
	 * @return 抽奖活动名称
	 */
	public string getTitle() {
		return title;
	}

	/**
	 * 抽奖活动名称（选择使用模板时，也作为摇一摇消息主标题），最长6个汉字，12个英文字母。
	 * @param title 抽奖活动名称
	 */
	public void setTitle(string title) {
		this.title = title;
	}

	/**
	 * 抽奖活动描述（选择使用模板时，也作为摇一摇消息副标题），最长7个汉字，14个英文字母。
	 * @return 抽奖活动描述
	 */
	public string getDesc() {
		return desc;
	}

	/**
	 * 抽奖活动描述（选择使用模板时，也作为摇一摇消息副标题），最长7个汉字，14个英文字母。
	 * @param desc 抽奖活动描述
	 */
	public void setDesc(string desc) {
		this.desc = desc;
	}

	/**
	 * 抽奖开关。0关闭，1开启，默认为1
	 * @return 抽奖开关
	 */
	public Integer getOnoff() {
		return onoff;
	}

	/**
	 * 抽奖开关。0关闭，1开启，默认为1
	 * @param onoff 抽奖开关
	 */
	public void setOnoff(Integer onoff) {
		this.onoff = onoff;
	}

	/**
	 * 抽奖活动开始时间，unix时间戳，单位秒
	 * @return 抽奖活动开始时间
	 */
	public Long getBeginTime() {
		return beginTime;
	}

	/**
	 * 抽奖活动开始时间，unix时间戳，单位秒
	 * @param beginTime 抽奖活动开始时间
	 */
	public void setBeginTime(Long beginTime) {
		this.beginTime = beginTime;
	}

	/**
	 * 抽奖活动结束时间，unix时间戳，单位秒，红包活动有效期最长为91天
	 * @return 抽奖活动结束时间
	 */
	public Long getExpireTime() {
		return expireTime;
	}

	/**
	 * 抽奖活动结束时间，unix时间戳，单位秒，红包活动有效期最长为91天
	 * @param expireTime 抽奖活动结束时间
	 */
	public void setExpireTime(Long expireTime) {
		this.expireTime = expireTime;
	}

	/**
	 * @return 红包提供商户公众号的appid
	 */
	public string getSponsorAppId() {
		return sponsorAppId;
	}

	/**
	 * @param sponsorAppId 红包提供商户公众号的appid
	 */
	public void setSponsorAppId(string sponsorAppId) {
		this.sponsorAppId = sponsorAppId;
	}

	/**
	 * @return 创建活动的开发者appid
	 */
	public string getAppId() {
		return appId;
	}

	/**
	 * @param appId 创建活动的开发者appid
	 */
	public void setAppId(string appId) {
		this.appId = appId;
	}

	/**
	 * @return 已录入的红包总数
	 */
	public Long getPrizeCount() {
		return prizeCount;
	}

	/**
	 * @param prizeCount 已录入的红包总数
	 */
	public void setPrizeCount(Long prizeCount) {
		this.prizeCount = prizeCount;
	}

	/**
	 * @return 创建活动时预设的录入红包ticket数量上限
	 */
	public Long getPrizeCountLimit() {
		return prizeCountLimit;
	}

	/**
	 * @param prizeCountLimit 创建活动时预设的录入红包ticket数量上限
	 */
	public void setPrizeCountLimit(Long prizeCountLimit) {
		this.prizeCountLimit = prizeCountLimit;
	}

	/**
	 * @return 红包关注界面后可以跳转到第三方自定义的页面
	 */
	public string getJumpUrl() {
		return jumpUrl;
	}

	/**
	 * @param jumpUrl 红包关注界面后可以跳转到第三方自定义的页面
	 */
	public void setJumpUrl(string jumpUrl) {
		this.jumpUrl = jumpUrl;
	}

	/**
	 * @return 过期红包ticket数量
	 */
	public Long getExpiredPrizes() {
		return expiredPrizes;
	}

	/**
	 * @param expiredPrizes 过期红包ticket数量
	 */
	public void setExpiredPrizes(Long expiredPrizes) {
		this.expiredPrizes = expiredPrizes;
	}

	/**
	 * @return 已发放的红包ticket数量
	 */
	public Long getDrawedPrizes() {
		return drawedPrizes;
	}

	/**
	 * @param drawedPrizes 已发放的红包ticket数量
	 */
	public void setDrawedPrizes(Long drawedPrizes) {
		this.drawedPrizes = drawedPrizes;
	}

	/**
	 * @return 可用的红包ticket数量
	 */
	public Long getAvailablePrizes() {
		return availablePrizes;
	}

	/**
	 * @param availablePrizes 可用的红包ticket数量
	 */
	public void setAvailablePrizes(Long availablePrizes) {
		this.availablePrizes = availablePrizes;
	}

	/**
	 * @return 已过期的红包金额总和
	 */
	public Long getExpiredValue() {
		return expiredValue;
	}

	/**
	 * @param expiredValue 已过期的红包金额总和
	 */
	public void setExpiredValue(Long expiredValue) {
		this.expiredValue = expiredValue;
	}

	/**
	 * @return 已发放的红包金额总和
	 */
	public Long getDrawedValue() {
		return drawedValue;
	}

	/**
	 * @param drawedValue 已发放的红包金额总和
	 */
	public void setDrawedValue(Long drawedValue) {
		this.drawedValue = drawedValue;
	}

	/**
	 * @return 可用的红包金额总和
	 */
	public Long getAvailableValue() {
		return availableValue;
	}

	/**
	 * @param availableValue 可用的红包金额总和
	 */
	public void setAvailableValue(Long availableValue) {
		this.availableValue = availableValue;
	}
}
