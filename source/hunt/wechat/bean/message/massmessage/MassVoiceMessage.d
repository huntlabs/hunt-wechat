module hunt.wechat.bean.message.massmessage.MassVoiceMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.Preview;
import hunt.wechat.bean.message.preview.VoicePreview;

class MassVoiceMessage : MassMessage{

	private Map!(string, string) voice;

	public this(string media_id) {
		super();
		voice = new HashMap!(string, string)();
		voice.put("media_id",media_id);
		super.msgtype = "voice";
	}

	public Map!(string, string) getVoice() {
		return voice;
	}

	public void setVoice(Map!(string, string) voice) {
		this.voice = voice;
	}

	override
	public Preview convert() {
		Preview preview = new VoicePreview(voice.get("media_id"));
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}

}
