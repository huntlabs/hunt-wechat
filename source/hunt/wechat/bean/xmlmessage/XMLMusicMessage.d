module hunt.wechat.bean.xmlmessage.XMLMusicMessage;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.MusicMessage;
import hunt.wechat.bean.message.message.MusicMessage.Music;

public class XMLMusicMessage : XMLMessage {

	private static final long serialVersionUID = 4423743864197488630L;

	private string title;

	private string description;

	private string musicUrl;

	private string hQMusicUrl;

	private string thumbMediaId;

	/**
	 * 
	 * @param toUserName
	 *            toUserName
	 * @param fromUserName
	 *            fromUserName
	 * @param title
	 *            [可以为空]
	 * @param description
	 *            [可以为空]
	 * @param musicUrl
	 *            [可以为空] 音乐链接
	 * @param hQMusicUrl
	 *            [可以为空] 高质量音乐链接，WIFI环境优先使用该链接播放音乐
	 * @param thumbMediaId
	 *            缩略图的媒体id，通过上传多媒体文件，得到的id
	 */
	public XMLMusicMessage(string toUserName, string fromUserName, string title, string description, string musicUrl,
			string hQMusicUrl, string thumbMediaId) {
		super(toUserName, fromUserName, "music");
		this.title = title;
		this.description = description;
		this.musicUrl = musicUrl;
		this.hQMusicUrl = hQMusicUrl;
		this.thumbMediaId = thumbMediaId;
	}

	override
	public string subXML() {
		StringBuilder sb = new StringBuilder();
		sb.append("<Music>");
		sb.append("<Title><![CDATA[" + (title == null ? "" : title) + "]]></Title>");
		sb.append("<Description><![CDATA[" + (description == null ? "" : description) + "]]></Description>");
		sb.append("<MusicUrl><![CDATA[" + (musicUrl == null ? "" : musicUrl) + "]]></MusicUrl>");
		sb.append("<HQMusicUrl><![CDATA[" + (hQMusicUrl == null ? "" : hQMusicUrl) + "]]></HQMusicUrl>");
		sb.append("<ThumbMediaId><![CDATA[" + thumbMediaId + "]]></ThumbMediaId>");
		sb.append("</Music>");
		return sb.toString();
	}

	override
	public Message convert() {
		Music music = new Music(title, description, musicUrl, hQMusicUrl, thumbMediaId);
		return new MusicMessage(toUserName, music);
	}
}
