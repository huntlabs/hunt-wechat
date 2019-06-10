module hunt.wechat.bean.material.MaterialBatchgetResultItem;

public class MaterialBatchgetResultItem {

	private string media_id;

	private MaterialBatchgetResultItemContent content;

	private string name;

	private string update_time;
	
	private string url;

	public string getMedia_id() {
		return media_id;
	}

	public void setMedia_id(string media_id) {
		this.media_id = media_id;
	}

	public MaterialBatchgetResultItemContent getContent() {
		return content;
	}

	public void setContent(MaterialBatchgetResultItemContent content) {
		this.content = content;
	}

	public string getName() {
		return name;
	}

	public void setName(string name) {
		this.name = name;
	}

	public string getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(string update_time) {
		this.update_time = update_time;
	}
	
	public void setUrl(string url){
		this.url = url;
	}

 	public string getUrl(){
		return url;
	}
}
