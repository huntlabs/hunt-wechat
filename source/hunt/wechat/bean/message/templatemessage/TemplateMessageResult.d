module hunt.wechat.bean.message.templatemessage.TemplateMessageResult;

import hunt.wechat.bean.BaseResult;

public class TemplateMessageResult : BaseResult{

	private Long msgid;

	public Long getMsgid() {
		return msgid;
	}

	public void setMsgid(Long msgid) {
		this.msgid = msgid;
	}


}
