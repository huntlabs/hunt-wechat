/**
 * 
 */
module hunt.wechat.bean.card.update.UpdateCash;

import hunt.wechat.bean.card.Cash;

/**
 * 微信卡券－卡券管理－更改卡券信息接口（代金券）－请求参数 
 * 
 * 
 */
class UpdateCash : AbstractUpdate {
	
	/**
	 * 代金券
	 */
	private Cash cash;

	/**
	 * @return 代金券
	 */
	public Cash getCash() {
		return cash;
	}

	/**
	 * @param cash 代金券
	 */
	public void setCash(Cash cash) {
		this.cash = cash;
	}
}
