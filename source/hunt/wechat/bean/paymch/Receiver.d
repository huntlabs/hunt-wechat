module hunt.wechat.bean.paymch.Receiver;

import hunt.collection.List;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

class Receiver {

	private string type;

	private string account;

	private Integer amount;

	private string description;

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getAccount() {
		return account;
	}

	public void setAccount(string account) {
		this.account = account;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public string getDescription() {
		return description;
	}

	public void setDescription(string description) {
		this.description = description;
	}

	static class JsonXmlAdapter : XmlAdapter<string, List!(Receiver)> {

		override
		public string marshal(List!(Receiver) v){
			return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
		}

		override
		public List!(Receiver) unmarshal(string v){
			return JSON.parseObject(v, new TypeReference<List!(Receiver)>() {
			});
		}

	}
}
