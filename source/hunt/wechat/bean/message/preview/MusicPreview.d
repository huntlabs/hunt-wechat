module hunt.wechat.bean.message.preview.MusicPreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

class MusicPreview : Preview {

	private Map!(string, string) music = new HashMap!(string, string)();

	public this(){

	}

	public this(string media_id) {
		super();
		this.setMsgtype("music");
		music.put("media_id", media_id);
	}

	public Map!(string, string) getMusic() {
		return music;
	}

	public void setMusic(Map!(string, string) music) {
		this.music = music;
	}

}
