module hunt.wechat.bean.comment.ReplyAdd;

public class ReplyAdd : Params {

	private string content;

	public ReplyAdd() {
	}

	public ReplyAdd(string content) {
		this.content = content;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

}
