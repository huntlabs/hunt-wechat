module hunt.wechat.bean.message.preview.TextPreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

class TextPreview : Preview{

	private Map!(string,string) text = new HashMap!(string,string)();

	public TextPreview(){

	}
	public TextPreview(string content) {
		super();
		this.setMsgtype("text");
		text.put("content", content);
	}

	public Map!(string, string) getText() {
		return text;
	}

	public void setText(Map!(string, string) text) {
		this.text = text;
	}
	
}
