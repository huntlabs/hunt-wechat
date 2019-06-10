module hunt.wechat.bean.message.preview.WxcardPreview;

import hunt.collection.HashMap;
import hunt.collection.Map;

public class WxcardPreview : Preview{

	private Map<string,Object> wxcard = new HashMap<string,Object>();

	public WxcardPreview(){

	}
	public WxcardPreview(string card_id,Map<string,string> card_ext) {
		super();
		this.setMsgtype("wxcard");
		wxcard.put("card_id", card_id);
		if(card_ext != null){
			wxcard.put("card_ext", card_ext);
		}
	}

	public Map<string, Object> getWxcard() {
		return wxcard;
	}

	public void setWxcard(Map<string, Object> wxcard) {
		this.wxcard = wxcard;
	}
	
}
