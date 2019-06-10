module hunt.wechat.bean.paymch.MicropayPromotionDetailXmlAdapter;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;

public class MicropayPromotionDetailXmlAdapter : XmlAdapter<string, MicropayPromotionDetail> {

	override
	public MicropayPromotionDetail unmarshal(string v) throws Exception {
		return JSON.parseObject(v, MicropayPromotionDetail.class);
	}

	override
	public string marshal(MicropayPromotionDetail v) throws Exception {
		return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
	}

}
