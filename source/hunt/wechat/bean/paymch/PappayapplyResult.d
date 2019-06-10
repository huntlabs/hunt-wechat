module hunt.wechat.bean.paymch.PappayapplyResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class PappayapplyResult : MchBase{

	private string device_info;

	private string trade_type;

	private string contract_id;

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getContract_id() {
		return contract_id;
	}

	public void setContract_id(string contract_id) {
		this.contract_id = contract_id;
	}



}
