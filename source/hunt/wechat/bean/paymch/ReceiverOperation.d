module hunt.wechat.bean.paymch.ReceiverOperation;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;

public class ReceiverOperation {

	private string type;

	private string account;

	private string name;

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

	public string getName() {
		return name;
	}

	public void setName(string name) {
		this.name = name;
	}

	static class JsonXmlAdapter : XmlAdapter<string, ReceiverOperation> {

		override
		public string marshal(ReceiverOperation v) throws Exception {
			return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
		}

		override
		public ReceiverOperation unmarshal(string v) throws Exception {
			return JSON.parseObject(v, ReceiverOperation.class);
		}

	}
}
