/**
 * 
 */
module hunt.wechat.bean.card.update.UpdateDiscount;

import hunt.wechat.bean.card.Discount;

/**
 * 微信卡券－卡券管理－更改卡券信息接口（折扣券）－请求参数 
 * 
 * 
 */
class UpdateDiscount : AbstractUpdate {
	
	/**
	 * 折扣券
	 */
	private Discount discount;

	/**
	 * @return 折扣券
	 */
	public Discount getDiscount() {
		return discount;
	}

	/**
	 * @param discount 折扣券
	 */
	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

}
