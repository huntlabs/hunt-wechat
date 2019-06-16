module hunt.wechat.bean.material.Description;

/**
 * 新增永久视频素材需特别注意
 * 
 *
 */
class Description {

	private string title;

	private string introduction;

	public this() {
	}

	public this(string title, string introduction) {
		this.title = title;
		this.introduction = introduction;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public string getIntroduction() {
		return introduction;
	}

	public void setIntroduction(string introduction) {
		this.introduction = introduction;
	}


}
