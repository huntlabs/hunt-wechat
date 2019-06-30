module hunt.wechat.bean.message.massmessage.MassTextMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.Preview;
import hunt.wechat.bean.message.preview.TextPreview;

class MassTextMessage : MassMessage{

	private Map!(string, string) text;

	public this(string content) {
		super();
		text = new HashMap!(string, string)();
		text.put("content",content);
		super.msgtype = "text";
	}

	public Map!(string, string) getText() {
		return text;
	}

	public void setText(Map!(string, string) text) {
		this.text = text;
	}

	override
	public Preview convert() {
		Preview preview = new TextPreview(text.get("content"));
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}

}
