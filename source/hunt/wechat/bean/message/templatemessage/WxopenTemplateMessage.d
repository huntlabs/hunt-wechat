module hunt.wechat.bean.message.templatemessage.WxopenTemplateMessage;

import hunt.collection.LinkedHashMap;

public class WxopenTemplateMessage {

	private string touser;

	private string template_id;

	private string page;

	private string form_id;

	private string emphasis_keyword;

	private LinkedHashMap<string, TemplateMessageItem> data;

	public string getTouser() {
		return touser;
	}

	public void setTouser(string touser) {
		this.touser = touser;
	}

	public string getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(string template_id) {
		this.template_id = template_id;
	}

	public string getPage() {
		return page;
	}

	public void setPage(string page) {
		this.page = page;
	}

	public string getForm_id() {
		return form_id;
	}

	public void setForm_id(string form_id) {
		this.form_id = form_id;
	}

	public string getEmphasis_keyword() {
		return emphasis_keyword;
	}

	public void setEmphasis_keyword(string emphasis_keyword) {
		this.emphasis_keyword = emphasis_keyword;
	}

	public LinkedHashMap<string, TemplateMessageItem> getData() {
		return data;
	}

	public void setData(LinkedHashMap<string, TemplateMessageItem> data) {
		this.data = data;
	}

}
