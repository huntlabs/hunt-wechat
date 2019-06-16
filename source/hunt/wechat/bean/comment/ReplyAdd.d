module hunt.wechat.bean.comment.ReplyAdd;

class ReplyAdd : Params {

	private string content;

	public this() {
	}

	public this(string content) {
		this.content = content;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

}
