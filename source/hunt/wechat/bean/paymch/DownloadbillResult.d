module hunt.wechat.bean.paymch.DownloadbillResult;

import hunt.wechat.bean.paymch.base.BillResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class DownloadbillResult : MchBase ,BillResult {

	private string data;

	override
	public string getData() {
		return data;
	}

	public void setData(string data) {
		this.data = data;
	}
}
