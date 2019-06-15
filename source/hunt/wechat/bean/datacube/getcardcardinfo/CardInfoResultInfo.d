module hunt.wechat.bean.datacube.getcardcardinfo.CardInfoResultInfo;

import hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfoResultInfo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 获取免费券数据接口－响应参数－日统计结果
 * 
 * @author Moyq5
 *
 */
class CardInfoResultInfo : BizuinInfoResultInfo {

	/**
	 * 卡券ID
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * cardtype:0：折扣券，1：代金券，2：礼品券，3：优惠券，4：团购券
	 * （暂不支持拉取特殊票券类型数据，电影票、飞机票、会议门票、景区门票）
	 */
	@JSONField(name = "card_type")
	private string cardType;
	
	/**
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}
	
	/**
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
	
	/**
	 * cardtype:0：折扣券，1：代金券，2：礼品券，3：优惠券，4：团购券
	 * （暂不支持拉取特殊票券类型数据，电影票、飞机票、会议门票、景区门票）
	 * @return 卡券类型
	 */
	public string getCardType() {
		return cardType;
	}
	
	/**
	 * cardtype:0：折扣券，1：代金券，2：礼品券，3：优惠券，4：团购券
	 * （暂不支持拉取特殊票券类型数据，电影票、飞机票、会议门票、景区门票）
	 * @param cardType 卡券类型
	 */
	public void setCardType(string cardType) {
		this.cardType = cardType;
	}
}
