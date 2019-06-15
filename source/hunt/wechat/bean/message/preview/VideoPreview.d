module hunt.wechat.bean.message.preview.VideoPreview;

import hunt.wechat.bean.message.Uploadvideo;

class VideoPreview : Preview {

	private Uploadvideo video;

	public VideoPreview(){

	}
	public VideoPreview(Uploadvideo video) {
		super();
		this.setMsgtype("video");
		this.video = video;
	}

	public Uploadvideo getVideo() {
		return video;
	}

	public void setVideo(Uploadvideo video) {
		this.video = video;
	}

}
