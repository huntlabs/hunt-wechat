module hunt.wechat.bean.message.massmessage.MassImageMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.ImagePreview;
import hunt.wechat.bean.message.preview.Preview;

class MassImageMessage : MassMessage{

	private Map!(string, string) image;

	public MassImageMessage(string media_id) {
		super();
		image = new HashMap!(string, string)();
		image.put("media_id",media_id);
		super.msgtype = "image";
	}

	public Map!(string, string) getImage() {
		return image;
	}

	public void setImage(Map!(string, string) image) {
		this.image = image;
	}

	override
	public Preview convert() {
		Preview preview = new ImagePreview(image.get("media_id"));
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}
	
}
