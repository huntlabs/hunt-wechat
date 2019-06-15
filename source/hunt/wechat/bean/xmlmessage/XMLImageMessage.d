module hunt.wechat.bean.xmlmessage.XMLImageMessage;

import hunt.wechat.bean.message.message.ImageMessage;
import hunt.wechat.bean.message.message.Message;

class XMLImageMessage : XMLMessage{


	private string mediaId;

	public XMLImageMessage(string toUserName, string fromUserName, string mediaId) {
		super(toUserName, fromUserName, "image");
		this.mediaId = mediaId;
	}

	override
	public string subXML() {
		return "<Image><MediaId><![CDATA[" + mediaId + "]]></MediaId></Image>";
	}

	override
	public Message convert() {
		return new ImageMessage(toUserName, mediaId);
	}

}
