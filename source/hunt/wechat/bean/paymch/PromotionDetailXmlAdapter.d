module hunt.wechat.bean.paymch.PromotionDetailXmlAdapter;

import hunt.collection.List;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;

public class PromotionDetailXmlAdapter : XmlAdapter<string, List<PromotionDetail>> {

	override
	public List<PromotionDetail> unmarshal(string v) throws Exception {
		string a = JSON.parseObject(v).getString("promotion_detail");
		return JSON.parseArray(a, PromotionDetail.class);
	}

	override
	public string marshal(List<PromotionDetail> v) throws Exception {
		return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
	}
}
