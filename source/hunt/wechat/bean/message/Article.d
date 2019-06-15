module hunt.wechat.bean.message.Article;

/**
 * 高级群发接口  图文消息素材
 * @author LiYi
 *
 */
class Article {

	private string title;

	private string thumb_media_id;//图文消息的封面图片素材id

	private string show_cover_pic;//是否显示封面，0为false，即不显示，1为true，即显示
	
	private string thumb_url;	//封面图片地址

	private string author;

	private string digest;//图文消息的摘要，仅有单图文消息才有摘要，多图文此处为空

	private string content;//图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS
	
	private string url;	//图文页的URL(高级群发不可用外链)
	
	private string content_source_url; 	//图文消息的原文地址，即点击“阅读原文”后的URL
	
	private Integer need_open_comment;	//是否打开评论，0不打开，1打开
	
	private Integer only_fans_can_comment;	//是否粉丝才可评论，0所有人可评论，1粉丝才可评论

	
	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public string getThumb_media_id() {
		return thumb_media_id;
	}

	public void setThumb_media_id(string thumb_media_id) {
		this.thumb_media_id = thumb_media_id;
	}

	public string getShow_cover_pic() {
		return show_cover_pic;
	}

	public void setShow_cover_pic(string show_cover_pic) {
		this.show_cover_pic = show_cover_pic;
	}

	public string getAuthor() {
		return author;
	}

	public void setAuthor(string author) {
		this.author = author;
	}

	public string getDigest() {
		return digest;
	}

	public void setDigest(string digest) {
		this.digest = digest;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}

	public string getContent_source_url() {
		return content_source_url;
	}

	public void setContent_source_url(string content_source_url) {
		this.content_source_url = content_source_url;
	}

	public Integer getNeed_open_comment() {
		return need_open_comment;
	}

	public void setNeed_open_comment(Integer need_open_comment) {
		this.need_open_comment = need_open_comment;
	}

	public Integer getOnly_fans_can_comment() {
		return only_fans_can_comment;
	}

	public void setOnly_fans_can_comment(Integer only_fans_can_comment) {
		this.only_fans_can_comment = only_fans_can_comment;
	}

	public string getThumb_url() {
		return thumb_url;
	}

	public void setThumb_url(string thumb_url) {
		this.thumb_url = thumb_url;
	}
	
}
