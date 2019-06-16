module hunt.wechat.bean.message.message.NewsMessage;

import hunt.collection.Collections;
import hunt.collection.List;

/**
 * 发送图文消息（点击跳转到外链）
 * 图文消息条数限制在1条以内，注意，如果图文数超过1，则将会返回错误码45008。
 *
 * 
 */
class NewsMessage : Message {

    public NewsMessage() {
    }

    public NewsMessage(string touser, List!(Article) articles) {
        super(touser, "news");
        this.news = new News();
        this.news.setArticles(articles);
    }
    
    /**
     * @since 2.8.26
     * @param touser
     * @param article
     */
    public NewsMessage(string touser, Article article) {
        super(touser, "news");
        this.news = new News();
        this.news.setArticles(Collections.singletonList(article));
    }

    private News news;

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    static class News {

        private List!(Article) articles;

        public List!(Article) getArticles() {
            return articles;
        }

        public void setArticles(List!(Article) articles) {
            this.articles = articles;
        }
    }

    static class Article {
        private string title;
        private string description;
        private string url;
        private string picurl;

        public Article(){

        }

        public Article(string title, string description, string url,
                       string picurl) {
            super();
            this.title = title;
            this.description = description;
            this.url = url;
            this.picurl = picurl;
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
