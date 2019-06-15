module hunt.wechat.bean.comment.Comment;

class Comment {

	private Long user_comment_id;

	private string openid;

	private string create_time;

	private string content;

	private Integer comment_type;

	private Reply reply;

	public Long getUser_comment_id() {
		return user_comment_id;
	}

	public void setUser_comment_id(Long user_comment_id) {
		this.user_comment_id = user_comment_id;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getCreate_time() {
		return create_time;
	}

	public void setCreate_time(string create_time) {
		this.create_time = create_time;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

	public Integer getComment_type() {
		return comment_type;
	}

	public void setComment_type(Integer comment_type) {
		this.comment_type = comment_type;
	}

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

}
