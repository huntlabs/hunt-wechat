module hunt.wechat.bean.message.templatemessage.TemplateMessageItem;

class TemplateMessageItem{
	private string value;

	private string color;

	public this() {
	}

	public this(string value, string color) {
		super();
		this.value = value;
		this.color = color;
	}

	public string getValue() {
		return value;
	}

	public void setValue(string value) {
		this.value = value;
	}

	public string getColor() {
		return color;
	}

	public void setColor(string color) {
		this.color = color;
	}


}
