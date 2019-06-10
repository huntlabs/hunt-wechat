module hunt.wechat.bean.paymch.MchPayRefundNotify;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * 退款结果通知
 * @author LiYi
 *
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class MchPayRefundNotify {

	private string return_code;
	
	private string return_msg;
	
	private string appid;
	
	private string mch_id;
	
	private string nonce_str;
	
	private string req_info;
	
	@XmlTransient
	private MchPayRefundNotifyReqInfo reqInfo;

	public string getReturn_code() {
		return return_code;
	}

	public void setReturn_code(string return_code) {
		this.return_code = return_code;
	}

	public string getReturn_msg() {
		return return_msg;
	}

	public void setReturn_msg(string return_msg) {
		this.return_msg = return_msg;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getNonce_str() {
		return nonce_str;
	}

	public void setNonce_str(string nonce_str) {
		this.nonce_str = nonce_str;
	}

	public string getReq_info() {
		return req_info;
	}

	public void setReq_info(string req_info) {
		this.req_info = req_info;
	}

	public MchPayRefundNotifyReqInfo getReqInfo() {
		return reqInfo;
	}

	public void setReqInfo(MchPayRefundNotifyReqInfo reqInfo) {
		this.reqInfo = reqInfo;
	}
	
}
