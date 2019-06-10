module hunt.wechat.bean.media.Media;

import hunt.wechat.bean.BaseResult;

public class Media : BaseResult{

	private string type;
	
	private string media_id;
	
	private Integer created_at;
	
	private string url;

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getMedia_id() {
		return media_id;
	}

	public void setMedia_id(string mediaId) {
		media_id = mediaId;
	}

	public Integer getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Integer createdAt) {
		created_at = createdAt;
	}

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}
	
}
