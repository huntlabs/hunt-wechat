module hunt.wechat.bean.message.preview.Preview;

abstract class Preview {
	
	private string touser;
	
	private string towxname;
	
	private string msgtype;

	public string getTouser() {
		return touser;
	}

	public void setTouser(string touser) {
		this.touser = touser;
	}

	public string getTowxname() {
		return towxname;
	}

	public void setTowxname(string towxname) {
		this.towxname = towxname;
	}

	public string getMsgtype() {
		return msgtype;
	}

	public void setMsgtype(string msgtype) {
		this.msgtype = msgtype;
	}

	
}
