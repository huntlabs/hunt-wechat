module hunt.wechat.bean.shakearound.device.applyid.DeviceApplyIdResultData;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－设备管理－申请设备ID－响应参数－申请状态信息
 * 
 * 
 */
class DeviceApplyIdResultData {

	/**
	 * 申请的批次ID，可用在“查询设备列表”接口按批次查询本次申请成功的设备ID。
	 */
	@JSONField(name = "apply_id")
	private Integer applyId;
	
	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 * 此外返回值全部为1(审核中)
	 */
	@JSONField(name = "audit_status")
	private Integer auditStatus;
	
	/**
	 * 审核备注，对审核状态的文字说明
	 */
	@JSONField(name = "audit_comment")
	private string auditComment;
	
	/**
	 * 申请的批次ID，可用在“查询设备列表”接口按批次查询本次申请成功的设备ID。
	 * @return 申请的批次ID
	 */
	public Integer getApplyId() {
		return applyId;
	}
	
	/**
	 * 申请的批次ID，可用在“查询设备列表”接口按批次查询本次申请成功的设备ID。
	 * @param applyId 申请的批次ID
	 */
	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}
	
	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 * 此外返回值全部为1(审核中)
	 * @return 审核状态
	 */
	public Integer getAuditStatus() {
		return auditStatus;
	}
	
	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 * 此外返回值全部为1(审核中)
	 * @param auditStatus 审核状态
	 */
	public void setAuditStatus(Integer auditStatus) {
		this.auditStatus = auditStatus;
	}
	
	/**
	 * 审核备注，对审核状态的文字说明
	 * @return 审核备注
	 */
	public string getAuditComment() {
		return auditComment;
	}
	
	/**
	 * 审核备注，对审核状态的文字说明
	 * @param auditComment 审核备注
	 */
	public void setAuditComment(string auditComment) {
		this.auditComment = auditComment;
	}
}
