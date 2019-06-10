module hunt.wechat.bean.wxa.GetnearbypoilistPoi;

public class GetnearbypoilistPoi {

	private string poi_id;

	private string qualification_address;

	private string qualification_num;

	private Integer audit_status;

	private Integer display_status;

	private string refuse_reason;

	public string getPoi_id() {
		return poi_id;
	}

	public void setPoi_id(string poi_id) {
		this.poi_id = poi_id;
	}

	public string getQualification_address() {
		return qualification_address;
	}

	public void setQualification_address(string qualification_address) {
		this.qualification_address = qualification_address;
	}

	public string getQualification_num() {
		return qualification_num;
	}

	public void setQualification_num(string qualification_num) {
		this.qualification_num = qualification_num;
	}

	public Integer getAudit_status() {
		return audit_status;
	}

	public void setAudit_status(Integer audit_status) {
		this.audit_status = audit_status;
	}

	public Integer getDisplay_status() {
		return display_status;
	}

	public void setDisplay_status(Integer display_status) {
		this.display_status = display_status;
	}

	public string getRefuse_reason() {
		return refuse_reason;
	}

	public void setRefuse_reason(string refuse_reason) {
		this.refuse_reason = refuse_reason;
	}

}
