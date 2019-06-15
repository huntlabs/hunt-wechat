/**
 * 
 */
module hunt.wechat.bean.card.update.UpdateGroupon;

import hunt.wechat.bean.card.Groupon;


/**
 * 微信卡券－卡券管理－更改卡券信息接口（团购券）－请求参数 
 * @author Moyq5
 * @date 2016年7月30日
 */
class UpdateGroupon : AbstractUpdate {
	
	/**
	 * 团购券
	 */
	private Groupon groupon;

	/**
	 * @return 团购券
	 */
	public Groupon getGroupon() {
		return groupon;
	}

	/**
	 * @param groupon 团购券
	 */
	public void setGroupon(Groupon groupon) {
		this.groupon = groupon;
	}

}
