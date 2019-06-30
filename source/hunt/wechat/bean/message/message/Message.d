module hunt.wechat.bean.message.message.Message;

abstract class Message {
	
	public this() {
		super();
	}
	
	protected this(string touser,string msgtype) {
		super();
		this.touser = touser;
		this.msgtype = msgtype;
	}
	
	
	private string touser;
	
	private string msgtype;

	private Customservice customservice;	//如果需要以某个客服帐号来发消息（在微信6.0.2及以上版本中显示自定义头像），则需在JSON数据包的后半部分加入customservice参数，例如发送文本消息则改为：

	public string getTouser() {
		return touser;
	}

	public void setTouser(string touser) {
		this.touser = touser;
	}

	public string getMsgtype() {
		return msgtype;
	}

	protected void setMsgtype(string msgtype) {
		this.msgtype = msgtype;
	}
	
	public Customservice getCustomservice() {
		return customservice;
	}

	public void setCustomservice(Customservice customservice) {
		this.customservice = customservice;
	}

	static class Customservice{
		
		private string kf_account;
	
		public string getKf_account() {
			return kf_account;
		}
	
		public void setKf_account(string kf_account) {
			this.kf_account = kf_account;
		}
		
	}
	
	
	
}
