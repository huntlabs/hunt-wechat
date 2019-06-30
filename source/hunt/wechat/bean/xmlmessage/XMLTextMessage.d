module hunt.wechat.bean.xmlmessage.XMLTextMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.TextMessage;

class XMLTextMessage : XMLMessage {


	private string content;

	public this(string toUserName, string fromUserName, string content) {
		super(toUserName, fromUserName, "text");
		this.content = content;
	}

	override
	public string subXML() {
		return "<Content><![CDATA[" + content + "]]></Content>";
	}

	override
	public Message convert() {
		return new TextMessage(toUserName, content);
	}

}
