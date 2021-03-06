/**
 * 
 */
module hunt.wechat.bean.shakearound.lottery.TicketInfo;

/**
 * 微信摇一摇周边－摇一摇红包－录入红包信息－请求参数－红包ticket
 * 
 * 
 */
class TicketInfo {

	/**
	 * 预下单时返回的红包ticket，
	 * 添加时：单个活动红包ticket数量上限为100000个，可添加多次。
	 */
	private string ticket;

	/**
	 * 预下单时返回的红包ticket，
	 * 添加时：单个活动红包ticket数量上限为100000个，可添加多次。
	 * @return 预下单时返回的红包ticket
	 */
	public string getTicket() {
		return ticket;
	}

	/**
	 * 预下单时返回的红包ticket，
	 * 添加时：单个活动红包ticket数量上限为100000个，可添加多次。
	 * @param ticket 预下单时返回的红包ticket
	 */
	public void setTicket(string ticket) {
		this.ticket = ticket;
	}
}
