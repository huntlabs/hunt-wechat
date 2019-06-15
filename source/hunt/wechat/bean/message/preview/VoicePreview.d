module hunt.wechat.bean.message.preview.VoicePreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

class VoicePreview : Preview{

	private Map!(string,string) voice = new HashMap!(string,string)();

	public VoicePreview(){

	}
	public VoicePreview(string media_id) {
		super();
		this.setMsgtype("voice");
		voice.put("media_id", media_id);
	}

	public Map!(string, string) getVoice() {
		return voice;
	}

	public void setVoice(Map!(string, string) voice) {
		this.voice = voice;
	}

}
