module hunt.wechat.bean.card.code.get.CodeGetResult;

import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券核销－查询Code接口－响应参数
 * 
 * @author Moyq5
 *
 */
class CodeGetResult : BaseResult {

	/**
	 * 卡券信息
	 */
	private CodeGetResultCard card;
	
	/**
	 * 用户openid
	 */
	private string openid;
	
	/**
	 * 是否可以核销，true为可以核销，false为不可核销
	 */
	@JSONField(name = "can_consume")
	private Boolean canConsume;
	
	/**
	 * 当前code对应卡券的状态: 
	 * NORMAL 正常 
	 * CONSUMED 已核销 
	 * EXPIRE 已过期 
	 * GIFTING 转赠中
	 * GIFT_TIMEOUT 转赠超时
	 * DELETE 已删除
	 * UNAVAILABLE 已失效 
	 * code未被添加或被转赠领取的情况则统一报错：invalid serial code
	 */
	@JSONField(name = "user_card_status")
	private string userCardStatus;

	/**
	 * @return 卡券信息
	 */
	public CodeGetResultCard getCard() {
		return card;
	}

	/**
	 * @param card 卡券信息
	 */
	public void setCard(CodeGetResultCard card) {
		this.card = card;
	}

	/**
	 * @return 用户openid
	 */
	public string getOpenid() {
		return openid;
	}

	/**
	 * @param openid 用户openid
	 */
	public void setOpenid(string openid) {
		this.openid = openid;
	}

	/**
	 * 是否可以核销，true为可以核销，false为不可核销
	 * @return 是否可以核销
	 */
	public Boolean getCanConsume() {
		return canConsume;
	}

	/**
	 * 是否可以核销，true为可以核销，false为不可核销
	 * @param canConsume 是否可以核销
	 */
	public void setCanConsume(Boolean canConsume) {
		this.canConsume = canConsume;
	}

	/**
	 * 当前code对应卡券的状态: 
	 * NORMAL 正常 
	 * CONSUMED 已核销 
	 * EXPIRE 已过期 
	 * GIFTING 转赠中
	 * GIFT_TIMEOUT 转赠超时
	 * DELETE 已删除
	 * UNAVAILABLE 已失效 
	 * code未被添加或被转赠领取的情况则统一报错：invalid serial code
	 * @return 卡券的状态
	 */
	public string getUserCardStatus() {
		return userCardStatus;
	}

	/**
	 * 当前code对应卡券的状态: 
	 * NORMAL 正常 
	 * CONSUMED 已核销 
	 * EXPIRE 已过期 
	 * GIFTING 转赠中
	 * GIFT_TIMEOUT 转赠超时
	 * DELETE 已删除
	 * UNAVAILABLE 已失效 
	 * code未被添加或被转赠领取的情况则统一报错：invalid serial code
	 * @param userCardStatus 卡券的状态
	 */
	public void setUserCardStatus(string userCardStatus) {
		this.userCardStatus = userCardStatus;
	}
}
