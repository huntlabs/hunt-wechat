module hunt.wechat.bean.message.massmessage.MassMusicMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.MusicPreview;
import hunt.wechat.bean.message.preview.Preview;

class MassMusicMessage : MassMessage{

	private Map!(string, string) music;

	public MassMusicMessage(string media_id) {
		super();
		music = new HashMap!(string, string)();
		music.put("media_id",media_id);
		super.msgtype = "music";
	}

	public Map!(string, string) getMusic() {
		return music;
	}

	public void setMusic(Map!(string, string) music) {
		this.music = music;
	}

	override
	public Preview convert() {
		//转为 Preview，官方未说明该类型
		Preview preview = new MusicPreview(music.get("media_id"));
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}
	
}
