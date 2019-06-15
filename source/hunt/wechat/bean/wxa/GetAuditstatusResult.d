module hunt.wechat.bean.wxa.GetAuditstatusResult;

import hunt.wechat.bean.BaseResult;

class GetAuditstatusResult : BaseResult {

	private Integer status;
	private string reason; // 当status=1，审核被拒绝时，返回的拒绝原因

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public string getReason(){
		return reason;
	}
	public void setReason(string reason){
		this.reason = reason;
	}

}
