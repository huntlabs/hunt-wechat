module hunt.wechat.bean.paymch.GethbinfoResult;

import hunt.collection.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class GethbinfoResult : MchBase{
	
	private string mch_billno;
	private string detail_id;
	private string status;		/* 红包状态
									SENDING:发放中 
									SENT:已发放待领取 
									FAILED：发放失败 
									RECEIVED:已领取 
									RFUND_ING:退款中 
									REFUND:已退款*/
	private string send_type;	/* 发放类型
									API:通过API接口发放 
									UPLOAD:通过上传文件方式发放 
									ACTIVITY:通过活动方式发放*/
	private string hb_type;		/*红包类型	
									GROUP:裂变红包 
									NORMAL:普通红包*/
	
	private Integer total_num;
	private Integer total_amount;
	private string reason;
	private string send_time;
	private string refund_time;
	private Integer refund_amount;
	private string wishing;
	private string remark;
	private string act_name;
	@XmlElementWrapper(name="hblist")
	//@XmlElement(name="hbinfo")
	private List!(Hbinfo) hblist;

	public string getMch_billno() {
		return mch_billno;
	}

	public void setMch_billno(string mch_billno) {
		this.mch_billno = mch_billno;
	}

	public string getDetail_id() {
		return detail_id;
	}

	public void setDetail_id(string detail_id) {
		this.detail_id = detail_id;
	}

	public string getStatus() {
		return status;
	}

	public void setStatus(string status) {
		this.status = status;
	}

	public string getSend_type() {
		return send_type;
	}

	public void setSend_type(string send_type) {
		this.send_type = send_type;
	}

	public string getHb_type() {
		return hb_type;
	}

	public void setHb_type(string hb_type) {
		this.hb_type = hb_type;
	}

	public Integer getTotal_num() {
		return total_num;
	}

	public void setTotal_num(Integer total_num) {
		this.total_num = total_num;
	}

	public Integer getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}

	public string getReason() {
		return reason;
	}

	public void setReason(string reason) {
		this.reason = reason;
	}

	public string getSend_time() {
		return send_time;
	}

	public void setSend_time(string send_time) {
		this.send_time = send_time;
	}

	public string getRefund_time() {
		return refund_time;
	}

	public void setRefund_time(string refund_time) {
		this.refund_time = refund_time;
	}

	public Integer getRefund_amount() {
		return refund_amount;
	}

	public void setRefund_amount(Integer refund_amount) {
		this.refund_amount = refund_amount;
	}

	public string getWishing() {
		return wishing;
	}

	public void setWishing(string wishing) {
		this.wishing = wishing;
	}

	public string getRemark() {
		return remark;
	}

	public void setRemark(string remark) {
		this.remark = remark;
	}

	public string getAct_name() {
		return act_name;
	}

	public void setAct_name(string act_name) {
		this.act_name = act_name;
	}

	public List!(Hbinfo) getHblist() {
		return hblist;
	}

	public void setHblist(List!(Hbinfo) hblist) {
		this.hblist = hblist;
	}
	
}
