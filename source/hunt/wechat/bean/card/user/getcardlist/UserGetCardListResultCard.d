module hunt.wechat.bean.card.user.getcardlist.UserGetCardListResultCard;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 管理卡券－获取用户已领取卡券接口－响应参数－已领取的卡券
 * 
 * @author Moyq5
 *
 */
public class UserGetCardListResultCard {

	@JSONField(name = "card_id")
	private string cardId;
	private string code;

	public string getCardId() {
		return cardId;
	}

	public void setCardId(string cardId) {
		this.cardId = cardId;
	}

	public string getCode() {
		return code;
	}

	public void setCode(string code) {
		this.code = code;
	}
}
