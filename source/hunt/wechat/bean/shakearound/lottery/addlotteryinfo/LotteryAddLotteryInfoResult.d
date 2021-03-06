/**
 * 
 */
module hunt.wechat.bean.shakearound.lottery.addlotteryinfo.LotteryAddLotteryInfoResult;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 微信摇一摇周边－摇一摇红包－创建红包活动－响应参数
 * 
 * 
 */
class LotteryAddLotteryInfoResult : BaseResult {

	/**
	 * 生成的红包活动id
	 */
	@JSONField(name = "lottery_id")
	private string lotteryId;
	
	/**
	 * 生成的模板页面ID
	 */
	@JSONField(name = "page_id")
	private Integer pageId;

	/**
	 * @return 生成的红包活动id
	 */
	public string getLotteryId() {
		return lotteryId;
	}

	/**
	 * @param lotteryId 生成的红包活动id
	 */
	public void setLotteryId(string lotteryId) {
		this.lotteryId = lotteryId;
	}

	/**
	 * @return 生成的模板页面ID
	 */
	public Integer getPageId() {
		return pageId;
	}

	/**
	 * @param pageId 生成的模板页面ID
	 */
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
}
