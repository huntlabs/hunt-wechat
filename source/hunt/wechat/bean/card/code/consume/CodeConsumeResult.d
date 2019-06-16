module hunt.wechat.bean.card.code.consume.CodeConsumeResult;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券核销－核销Code接口－响应参数
 * 
 * 
 *
 */
class CodeConsumeResult : BaseResult {

	private CodeConsumeResultCard card;

	/**
	 * 用户在该公众号内的唯一身份标识。
	 */
	private string openid;

	public CodeConsumeResultCard getCard() {
		return card;
	}

	public void setCard(CodeConsumeResultCard card) {
		this.card = card;
	}

	/**
	 * @return 用户在该公众号内的唯一身份标识
	 */
	public string getOpenid() {
		return openid;
	}

	/**
	 * @param openid 用户在该公众号内的唯一身份标识
	 */
	public void setOpenid(string openid) {
		this.openid = openid;
	}

}
