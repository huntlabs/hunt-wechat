module hunt.wechat.bean.message.massmessage.MassWxcardMessage;

import hunt.collection.HashMap;
import hunt.collection.Map;

import hunt.wechat.bean.message.preview.Preview;
import hunt.wechat.bean.message.preview.WxcardPreview;

class MassWxcardMessage : MassMessage{

	private Map!(string, string) wxcard;

	public MassWxcardMessage(string card_id) {
		super();
		wxcard = new HashMap!(string, string)();
		wxcard.put("card_id",card_id);
		super.msgtype = "wxcard";
	}

	public Map!(string, string) getWxcard() {
		return wxcard;
	}

	public void setWxcard(Map!(string, string) wxcard) {
		this.wxcard = wxcard;
	}

	override
	public Preview convert() {
		Preview preview = new WxcardPreview(wxcard.get("card_id"),null);
		if(this.getTouser()!=null && this.getTouser().size()>0){
			preview.setTouser(this.getTouser().iterator().next());
		}
		return preview;
	}
	
}
