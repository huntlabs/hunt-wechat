module hunt.wechat.bean.wxa.SubmitAuditResult;

import hunt.wechat.bean.BaseResult;

class SubmitAuditResult : BaseResult {

	private string auditid;

	public string getAuditid() {
		return auditid;
	}

	public void setAuditid(string auditid) {
		this.auditid = auditid;
	}

}
