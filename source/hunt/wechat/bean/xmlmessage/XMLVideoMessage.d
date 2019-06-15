module hunt.wechat.bean.xmlmessage.XMLVideoMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.VideoMessage;
import hunt.wechat.bean.message.message.VideoMessage.Video;

class XMLVideoMessage : XMLMessage {


	private string mediaId;

	private string title;

	private string description;

	public XMLVideoMessage(string toUserName, string fromUserName, string mediaId, string title, string description) {
		super(toUserName, fromUserName, "video");
		this.mediaId = mediaId;
		this.title = title;
		this.description = description;
	}

	override
	public string subXML() {
		return "<Video><MediaId><![CDATA["+mediaId+"]]></MediaId><Title><![CDATA["+(title==null?"":title)+"]]></Title><Description><![CDATA["+(description==null?"":description)+"]]></Description></Video>";
	}

	override
	public Message convert() {
		Video video = new Video(mediaId, title, description);
		return new VideoMessage(toUserName, video);
	}

}
