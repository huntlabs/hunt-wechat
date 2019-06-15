module hunt.wechat.bean.card.user.getcardlist.UserGetCardList;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 管理卡券－获取用户已领取卡券接口－请求参数
 * 
 * @author Moyq5
 *
 */
class UserGetCardList {

	/**
	 * 卡券ID。不填写时默认查询当前appid下的卡券。
	 * 必填：否
	 */
	@JSONField(name = "card_id")
	private string cardId;
	
	/**
	 * 需要查询的用户openid
	 * 必填：是
	 */
	private string openid;

	/**
	 * 卡券ID。不填写时默认查询当前appid下的卡券。
	 * @return 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID。不填写时默认查询当前appid下的卡券。
	 * 必填：否
	 * @param cardId 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	/**
	 * @return 需要查询的用户openid
	 */
	public string getOpenid() {
		return openid;
	}

	/**
	 * 需要查询的用户openid
	 * 必填：是
	 * @param openid 需要查询的用户openid
	 */
	public void setOpenid(string openid) {
		this.openid = openid;
	}
}
