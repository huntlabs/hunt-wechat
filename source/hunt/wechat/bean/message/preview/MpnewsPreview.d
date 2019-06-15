module hunt.wechat.bean.message.preview.MpnewsPreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

class MpnewsPreview : Preview{

	private Map!(string,string) mpnews = new HashMap!(string,string)();

	public MpnewsPreview(){

	}
	public MpnewsPreview(string media_id) {
		super();
		this.setMsgtype("mpnews");
		mpnews.put("media_id", media_id);
	}

	public Map!(string, string) getMpnews() {
		return mpnews;
	}

	public void setMpnews(Map!(string, string) mpnews) {
		this.mpnews = mpnews;
	}
	
}
