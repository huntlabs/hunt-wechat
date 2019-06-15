module hunt.wechat.bean.comment.Reply;

/**
 * 作者回复
 * 
 * @author LiYi
 *
 */
class Reply {

	private string content;

	private string create_time;

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

	public string getCreate_time() {
		return create_time;
	}

	public void setCreate_time(string create_time) {
		this.create_time = create_time;
	}

}
