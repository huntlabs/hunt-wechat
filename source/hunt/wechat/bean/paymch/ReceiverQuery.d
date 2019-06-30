module hunt.wechat.bean.paymch.ReceiverQuery;

import hunt.collection.List;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

class ReceiverQuery {

	private string type;

	private string account;

	private Integer amount;

	private string description;

	private string result;

	private string finish_time;

	private string fail_reason;

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

	public string getResult() {
		return result;
	}

	public void setResult(string result) {
		this.result = result;
	}

	public string getFinish_time() {
		return finish_time;
	}

	public void setFinish_time(string finish_time) {
		this.finish_time = finish_time;
	}

	public string getFail_reason() {
		return fail_reason;
	}

	public void setFail_reason(string fail_reason) {
		this.fail_reason = fail_reason;
	}

	
	static class JsonXmlAdapter : XmlAdapter!(string, List!(ReceiverQuery)) {

		override
		public string marshal(List!(ReceiverQuery) v){
			return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
		}

		override
		public List!(ReceiverQuery) unmarshal(string v){
			return JSON.parseObject(v, new class TypeReference!(List!(ReceiverQuery)) {
			});
		}

	}
}
