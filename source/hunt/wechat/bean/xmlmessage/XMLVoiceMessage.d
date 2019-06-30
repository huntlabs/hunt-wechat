module hunt.wechat.bean.xmlmessage.XMLVoiceMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.VoiceMessage;

class XMLVoiceMessage : XMLMessage {


	private string mediaId;

	public this(string toUserName, string fromUserName, string mediaId) {
		super(toUserName, fromUserName, "voice");
		this.mediaId = mediaId;
	}

	override
	public string subXML() {
		return "<Voice><MediaId><![CDATA[" + mediaId + "]]></MediaId></Voice>";
	}

	override
	public Message convert() {
		return new VoiceMessage(toUserName, mediaId);
	}

}
