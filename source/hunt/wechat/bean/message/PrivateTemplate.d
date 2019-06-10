module hunt.wechat.bean.message.PrivateTemplate;

public class PrivateTemplate {

	private string template_id;
	
	private string title;
	
	private string primary_industry;
	
	private string deputy_industry;
	
	private string content;
	
	private string example;

	public string getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(string template_id) {
		this.template_id = template_id;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public string getPrimary_industry() {
		return primary_industry;
	}

	public void setPrimary_industry(string primary_industry) {
		this.primary_industry = primary_industry;
	}

	public string getDeputy_industry() {
		return deputy_industry;
	}

	public void setDeputy_industry(string deputy_industry) {
		this.deputy_industry = deputy_industry;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

	public string getExample() {
		return example;
	}

	public void setExample(string example) {
		this.example = example;
	}
	
	
}
