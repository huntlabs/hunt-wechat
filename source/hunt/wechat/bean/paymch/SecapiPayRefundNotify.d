module hunt.wechat.bean.paymch.SecapiPayRefundNotify;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 
 * 退款回调数据
 * 
 * @author liyi
 * @since 2.8.19
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SecapiPayRefundNotify : MchBase{

	private string req_info;

	public string getReq_info() {
		return req_info;
	}

	public void setReq_info(string req_info) {
		this.req_info = req_info;
	}
	
}
