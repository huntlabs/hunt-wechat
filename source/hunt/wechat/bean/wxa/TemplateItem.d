module hunt.wechat.bean.wxa.TemplateItem;

public class TemplateItem {

	private string create_time;

	private string user_version;

	private string user_desc;

	private Long draft_id;
	
	private Long template_id;

	public string getCreate_time() {
		return create_time;
	}

	public void setCreate_time(string create_time) {
		this.create_time = create_time;
	}

	public string getUser_version() {
		return user_version;
	}

	public void setUser_version(string user_version) {
		this.user_version = user_version;
	}

	public string getUser_desc() {
		return user_desc;
	}

	public void setUser_desc(string user_desc) {
		this.user_desc = user_desc;
	}

	public Long getDraft_id() {
		return draft_id;
	}

	public void setDraft_id(Long draft_id) {
		this.draft_id = draft_id;
	}

	public Long getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(Long template_id) {
		this.template_id = template_id;
	}

}
