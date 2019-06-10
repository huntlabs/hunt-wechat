module hunt.wechat.bean.ticket.Ticket;

import hunt.wechat.bean.BaseResult;

public class Ticket : BaseResult{

	private string ticket;

	private Integer expires_in;

	public string getTicket() {
		return ticket;
	}

	public void setTicket(string ticket) {
		this.ticket = ticket;
	}

	public Integer getExpires_in() {
		return expires_in;
	}

	public void setExpires_in(Integer expires_in) {
		this.expires_in = expires_in;
	}


}
