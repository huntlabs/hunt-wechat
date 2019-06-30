module hunt.wechat.bean.message.message.MiniprogrampageMessage;

/**
 * 小程序卡片
 * 
 * @serial 2.8.26
 * 
 *
 */
class MiniprogrampageMessage : Message {

	public this() {
	}

	public this(string touser) {
		super(touser, "miniprogrampage");
	}

	public this(string touser, Miniprogrampage miniprogrampage) {
		this(touser);
		this.miniprogrampage = miniprogrampage;
	}

	private Miniprogrampage miniprogrampage;

	public Miniprogrampage getMiniprogrampage() {
		return miniprogrampage;
	}

	public void setMiniprogrampage(Miniprogrampage miniprogrampage) {
		this.miniprogrampage = miniprogrampage;
	}

	static class Miniprogrampage {

		private string title;
		private string pagepath;
		private string thumb_media_id;
		private string appid;

		public string getTitle() {
			return title;
		}

		public void setTitle(string title) {
			this.title = title;
		}

		public string getPagepath() {
			return pagepath;
		}

		public void setPagepath(string pagepath) {
			this.pagepath = pagepath;
		}

		public string getThumb_media_id() {
			return thumb_media_id;
		}

		public void setThumb_media_id(string thumb_media_id) {
			this.thumb_media_id = thumb_media_id;
		}

		public string getAppid() {
			return appid;
		}

		public void setAppid(string appid) {
			this.appid = appid;
		}

	}
}
