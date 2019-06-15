module hunt.wechat.bean.menu.selfmenu.News;

class News {

	private string title;

	private string author;

	private string digest;

	private Integer show_cover;

	private string cover_url;

	private string content_url;

	private string source_url;

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
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

	public Integer getShow_cover() {
		return show_cover;
	}

	public void setShow_cover(Integer show_cover) {
		this.show_cover = show_cover;
	}

	public string getCover_url() {
		return cover_url;
	}

	public void setCover_url(string cover_url) {
		this.cover_url = cover_url;
	}

	public string getContent_url() {
		return content_url;
	}

	public void setContent_url(string content_url) {
		this.content_url = content_url;
	}

	public string getSource_url() {
		return source_url;
	}

	public void setSource_url(string source_url) {
		this.source_url = source_url;
	}


}
