module hunt.wechat.bean.material.MaterialBatchgetResultItemContent;

import hunt.collection.List;

import hunt.wechat.bean.message.Article;

class MaterialBatchgetResultItemContent {

	private List!(Article) news_item;

	public List!(Article) getNews_item() {
		return news_item;
	}

	public void setNews_item(List!(Article) news_item) {
		this.news_item = news_item;
	}


}
