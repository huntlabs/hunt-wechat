module hunt.wechat.bean.media.MediaGetResult;

import hunt.wechat.bean.BaseResult;

class MediaGetResult : BaseResult{

	private string filename;
	
	private string contentType;
	
	private byte[] bytes;
	
	private string video_url;	//如果返回的是视频消息素材

	public string getFilename() {
		return filename;
	}

	public void setFilename(string filename) {
		this.filename = filename;
	}

	public string getContentType() {
		return contentType;
	}

	public void setContentType(string contentType) {
		this.contentType = contentType;
	}

	public byte[] getBytes() {
		return bytes;
	}

	public void setBytes(byte[] bytes) {
		this.bytes = bytes;
	}

	public string getVideo_url() {
		return video_url;
	}

	public void setVideo_url(string video_url) {
		this.video_url = video_url;
	}
	
}
