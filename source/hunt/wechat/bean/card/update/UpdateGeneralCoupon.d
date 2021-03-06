/**
 * 
 */
module hunt.wechat.bean.card.update.UpdateGeneralCoupon;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.card.GeneralCoupon;


/**
 * 微信卡券－卡券管理－更改卡券信息接口（优惠券）－请求参数 
 * 
 * 
 */
class UpdateGeneralCoupon : AbstractUpdate {
	
	/**
	 * 优惠券
	 */
	@JSONField(name = "general_coupon")
	private GeneralCoupon generalCoupon;

	/**
	 * @return 优惠券
	 */
	public GeneralCoupon getGeneralCoupon() {
		return generalCoupon;
	}

	/**
	 * @param generalCoupon 优惠券
	 */
	public void setGeneralCoupon(GeneralCoupon generalCoupon) {
		this.generalCoupon = generalCoupon;
	}

}
