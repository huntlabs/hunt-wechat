module hunt.wechat.bean.message.templatemessage.TemplateMessage;

import hunt.collection.LinkedHashMap;

public class TemplateMessage {

	private string touser;

	private string template_id;

	/**
	* 跳小程序所需数据，不需跳小程序可不用传该数据
	*/
	private TemplateMessageMiniProgram miniprogram;

	private string url;

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

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}

	public LinkedHashMap<string, TemplateMessageItem> getData() {
		return data;
	}

	public void setData(LinkedHashMap<string, TemplateMessageItem> data) {
		this.data = data;
	}

	public TemplateMessageMiniProgram getMiniprogram() {
	    return miniprogram;
	}

	public void setMiniprogram(TemplateMessageMiniProgram miniprogram) {
		this.miniprogram = miniprogram;
	}
}
