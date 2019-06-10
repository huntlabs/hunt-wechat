module hunt.wechat.bean.card.GeneralCoupon;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 优惠券
 * 
 * @author Moyq5
 *
 */
public class GeneralCoupon : AbstractInfo {

	/**
	 * 填写优惠详情。<br>
	 * 添加必填，不支持修改 
	 */
	@JSONField(name = "default_detail")
	private string defaultDetail;

	/**
	 * 填写优惠详情。
	 */
	public string getDefaultDetail() {
		return defaultDetail;
	}

	/**
	 * 填写优惠详情。<br>
	 * 添加必填，不支持修改 
	 */
	public void setDefaultDetail(string defaultDetail) {
		this.defaultDetail = defaultDetail;
	}

}
