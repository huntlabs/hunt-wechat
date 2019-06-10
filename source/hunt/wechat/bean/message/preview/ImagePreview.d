module hunt.wechat.bean.message.preview.ImagePreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

public class ImagePreview : Preview{

	private Map<string,string> image = new HashMap<string,string>();

	public ImagePreview(){

	}
	public ImagePreview(string media_id) {
		super();
		this.setMsgtype("image");
		image.put("media_id", media_id);
	}

	public Map<string, string> getImage() {
		return image;
	}

	public void setImage(Map<string, string> image) {
		this.image = image;
	}

}
