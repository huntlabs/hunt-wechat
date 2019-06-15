module hunt.wechat.bean.card.GeneralCouponCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.GeneralCoupon;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 优惠券
 * 
 * @author Moyq5
 *
 */
class GeneralCouponCard : AbstractCard {

	@JSONField(name = "general_coupon")
	private GeneralCoupon generalCoupon;

	public GeneralCouponCard() {
		super("GENERAL_COUPON");
	}

	public GeneralCoupon getGeneralCoupon() {
		return generalCoupon;
	}

	public void setGeneralCoupon(GeneralCoupon generalCoupon) {
		this.generalCoupon = generalCoupon;
	}

}
