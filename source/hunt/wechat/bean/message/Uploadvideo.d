module hunt.wechat.bean.message.Uploadvideo;

public class Uploadvideo {

	private string media_id;	//此处media_id需通过基础支持中的上传下载多媒体文件来得到

	private string title;

	private string description;

	public string getMedia_id() {
		return media_id;
	}

	public void setMedia_id(string media_id) {
		this.media_id = media_id;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public string getDescription() {
		return description;
	}

	public void setDescription(string description) {
		this.description = description;
	}


}
