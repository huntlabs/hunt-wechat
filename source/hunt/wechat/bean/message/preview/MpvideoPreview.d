module hunt.wechat.bean.message.preview.MpvideoPreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

class MpvideoPreview : Preview{

	private Map!(string,string) mpvideo = new HashMap!(string,string)();

	public this(){

	}
	public this(string media_id) {
		super();
		this.setMsgtype("mpvideo");
		mpvideo.put("media_id", media_id);
	}

	public Map!(string, string) getMpvideo() {
		return mpvideo;
	}

	public void setMpvideo(Map!(string, string) mpvideo) {
		this.mpvideo = mpvideo;
	}

	
}
