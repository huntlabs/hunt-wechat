/**
 * 
 */
module hunt.wechat.bean.card.update.UpdateGift;

import hunt.wechat.bean.card.Gift;


/**
 * 微信卡券－卡券管理－更改卡券信息接口（兑换券）－请求参数 
 * 
 * 
 */
class UpdateGift : AbstractUpdate {
	
	/**
	 * 兑换券
	 */
	private Gift gift;

	/**
	 * @return 兑换券
	 */
	public Gift getGift() {
		return gift;
	}

	/**
	 * @param gift 兑换券
	 */
	public void setGift(Gift gift) {
		this.gift = gift;
	}

}
