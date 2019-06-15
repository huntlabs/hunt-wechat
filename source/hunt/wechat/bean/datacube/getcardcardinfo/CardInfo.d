module hunt.wechat.bean.datacube.getcardcardinfo.CardInfo;

import hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 获取免费券数据接口－提交对象
 * 1. 该接口目前仅支持拉取免费券（优惠券、团购券、折扣券、礼品券）的卡券相关数据，暂不支持特殊票券（电影票、会议门票、景区门票、飞机票）数据。
 * 2. 查询时间区间需<=62天，否则报错；
 * 3. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
 * 4. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
 * @author Moyq5
 *
 */
class CardInfo : BizuinInfo {

	/**
	 * 卡券ID。填写后，指定拉出该卡券的相关数据。
	 * 必填：否
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * 卡券ID。填写后，指定拉出该卡券的相关数据。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。填写后，指定拉出该卡券的相关数据。
	 * 必填：否
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
}
