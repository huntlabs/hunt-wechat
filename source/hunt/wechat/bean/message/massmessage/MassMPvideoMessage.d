module hunt.wechat.bean.message.massmessage.MassMPvideoMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.MpvideoPreview;
import hunt.wechat.bean.message.preview.Preview;

class MassMPvideoMessage : MassMessage{

	private Map!(string, string) mpvideo;

	/**
	 *
	 * @param media_id  MessageAPI mediaUploadvideo 返回的media_id
	 */
	public MassMPvideoMessage(string media_id) {
		super();
		mpvideo = new HashMap!(string, string)();
		mpvideo.put("media_id",media_id);
		super.msgtype = "mpvideo";
	}

	public Map!(string, string) getMpvideo() {
		return mpvideo;
	}

	public void setMpvideo(Map!(string, string) mpvideo) {
		this.mpvideo = mpvideo;
	}

	override
	public Preview convert() {
		Preview preview = new MpvideoPreview(mpvideo.get("media_id"));
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}
}
