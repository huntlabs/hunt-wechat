module hunt.wechat.bean.wxa.AddnearbypoiData;

class AddnearbypoiData {

	private string audit_id;

	private string poi_id;
	
	private string related_credential;

	public string getAudit_id() {
		return audit_id;
	}

	public void setAudit_id(string audit_id) {
		this.audit_id = audit_id;
	}

	public string getPoi_id() {
		return poi_id;
	}

	public void setPoi_id(string poi_id) {
		this.poi_id = poi_id;
	}

	public string getRelated_credential() {
		return related_credential;
	}

	public void setRelated_credential(string related_credential) {
		this.related_credential = related_credential;
	}

}
