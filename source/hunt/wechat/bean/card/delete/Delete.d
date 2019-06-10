/**
 * 
 */
module hunt.wechat.bean.card.delete.Delete;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信卡券－卡券管理－删除卡券接口－请求参数
 * @author Moyq5
 * @date 2016年7月31日
 */
public class Delete {
	/**
	 * 卡券ID
	 */
	@JSONField(name = "card_id")
	private string cardId;

	/**
	 * 卡券ID
	 */
	public string getCardId() {
		return cardId;
	}

	/**
	 * 卡券ID
	 */
	public void setCardId(string cardId) {
		this.cardId = cardId;
	}
}
