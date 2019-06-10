module hunt.wechat.bean.xmlmessage.XMLNewsMessage;

import hunt.collection.ArrayList;
import hunt.collection.Collections;
import hunt.collection.List;

import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.message.NewsMessage;

public class XMLNewsMessage : XMLMessage {

	private static final long serialVersionUID = -3297287142409782906L;

	private List<Article> articles;

	/**
	 * @param toUserName
	 *            toUserName
	 * @param fromUserName
	 *            fromUserName
	 * @param articles
	 *            articles
	 */
	public XMLNewsMessage(string toUserName, string fromUserName, List<Article> articles) {
		super(toUserName, fromUserName, "news");
		this.articles = articles;
	}
	
	/**
	 * @since 2.8.26           
	 * @param toUserName
	 *            toUserName
	 * @param fromUserName
	 *            fromUserName
	 * @param article
	 *            article
	 */
	public XMLNewsMessage(string toUserName, string fromUserName, Article article) {
		super(toUserName, fromUserName, "news");
		this.articles = Collections.singletonList(article);
	}

	override
	public string subXML() {
		StringBuilder sb = new StringBuilder();
		sb.append("<ArticleCount>" + articles.size() + "</ArticleCount>");
		sb.append("<Articles>");
		for (Article a : articles) {
			sb.append("<item>");
			sb.append("<Title><![CDATA[" + (a.title == null ? "" : a.title) + "]]></Title>");
			sb.append("<Description><![CDATA[" + (a.description == null ? "" : a.description) + "]]></Description>");
			sb.append("<PicUrl><![CDATA[" + (a.picurl == null ? "" : a.picurl) + "]]></PicUrl>");
			sb.append("<Url><![CDATA[" + (a.url == null ? "" : a.url) + "]]></Url>");
			sb.append("</item>");
		}
		sb.append("</Articles>");
		return sb.toString();
	}

	override
	public Message convert() {
		List<NewsMessage.Article> list = new ArrayList<>();
		if (articles != null) {
			for (Article a : articles) {
				NewsMessage.Article item = new NewsMessage.Article(a.getTitle(), a.getDescription(), a.getUrl(),
						a.getPicurl());
				list.add(item);
			}
		}
		return new NewsMessage(toUserName, list);
	}

	public static class Article {
		private string title;
		private string description;
		private string url;
		private string picurl;

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

		public string getUrl() {
			return url;
		}

		public void setUrl(string url) {
			this.url = url;
		}

		public string getPicurl() {
			return picurl;
		}

		public void setPicurl(string picurl) {
			this.picurl = picurl;
		}

	}

}
