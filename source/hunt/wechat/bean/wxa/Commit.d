module hunt.wechat.bean.wxa.Commit;

class Commit {

	private string template_id;
	private string ext_json;
	private string user_version;
	private string user_desc;

	public this() {
	}

	public this(string template_id, string ext_json, string user_version, string user_desc) {
		this.template_id = template_id;
		this.ext_json = ext_json;
		this.user_version = user_version;
		this.user_desc = user_desc;
	}

	public string getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(string template_id) {
		this.template_id = template_id;
	}

	public string getExt_json() {
		return ext_json;
	}

	public void setExt_json(string ext_json) {
		this.ext_json = ext_json;
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

}
