module hunt.wechat.bean.xmlmessage.XMLTextMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.TextMessage;

public class XMLTextMessage : XMLMessage {

	private static final long serialVersionUID = 2457998440521370652L;

	private string content;

	public XMLTextMessage(string toUserName, string fromUserName, string content) {
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
