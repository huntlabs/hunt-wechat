module hunt.wechat.bean.xmlmessage.XMLVoiceMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.VoiceMessage;

public class XMLVoiceMessage : XMLMessage {

	private static final long serialVersionUID = 2372031664279510333L;

	private string mediaId;

	public XMLVoiceMessage(string toUserName, string fromUserName, string mediaId) {
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
