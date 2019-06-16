module hunt.wechat.bean.card.Gift;

/**
 * 兑换券
 * 
 * 
 *
 */
class Gift : AbstractInfo {

	/**
	 * 填写兑换内容的名称。
	 * 添加必填，不支持修改 
	 */
	private string gift;

	/**
	 * 兑换内容的名称。
	 */
	public string getGift() {
		return gift;
	}

	/**
	 * 填写兑换内容的名称。
	 * 添加必填，不支持修改 
	 */
	public void setGift(string gift) {
		this.gift = gift;
	}

}
