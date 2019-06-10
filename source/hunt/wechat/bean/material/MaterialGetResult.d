module hunt.wechat.bean.material.MaterialGetResult;

import hunt.collection.List;

import hunt.wechat.bean.media.MediaGetResult;
import hunt.wechat.bean.message.Article;

public class MaterialGetResult : MediaGetResult {

	private string title; // 如果返回的是视频消息素材

	private string description; // 如果返回的是视频消息素材

	private string down_url; // 如果返回的是视频消息素材

	private List<Article> news_item; // 图文素材返回

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

	public string getDown_url() {
		return down_url;
	}

	public void setDown_url(string down_url) {
		this.down_url = down_url;
	}

	public List<Article> getNews_item() {
		return news_item;
	}

	public void setNews_item(List<Article> news_item) {
		this.news_item = news_item;
	}

}
