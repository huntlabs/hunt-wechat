/**
 * 
 */
module hunt.wechat.bean.shakearound.device.applystatus.DeviceApplyStatusResultData;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－设备管理－查询设备ID申请审核状态－响应参数－审核状态信息
 * 
 * 
 */
class DeviceApplyStatusResultData {

	/**
	 * 提交申请的时间戳
	 */
	@JSONField(name = "apply_time")
	private Long applyTime;
	
	/**
	 * 审核备注，对审核状态的文字说明
	 */
	@JSONField(name = "audit_comment")
	private string auditComment;
	
	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 */
	@JSONField(name = "audit_status")
	private Integer auditStatus;
	
	/**
	 * 确定审核结果的时间戳，若状态为审核中，则该时间值为0
	 */
	@JSONField(name = "audit_time")
	private Long auditTime;

	/**
	 * @return 提交申请的时间戳
	 */
	public Long getApplyTime() {
		return applyTime;
	}

	/**
	 * @param applyTime 提交申请的时间戳
	 */
	public void setApplyTime(Long applyTime) {
		this.applyTime = applyTime;
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

	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 * @return 审核状态
	 */
	public Integer getAuditStatus() {
		return auditStatus;
	}

	/**
	 * 审核状态。0：审核未通过、1：审核中、2：审核已通过；
	 * 若单次申请的设备ID数量小于等于500个，系统会进行快速审核；
	 * 若单次申请的设备ID数量大于500个，会在三个工作日内完成审核；
	 * @param auditStatus 审核状态
	 */
	public void setAuditStatus(Integer auditStatus) {
		this.auditStatus = auditStatus;
	}

	/**
	 * 确定审核结果的时间戳，若状态为审核中，则该时间值为0
	 * @return 确定审核结果的时间戳
	 */
	public Long getAuditTime() {
		return auditTime;
	}

	/**
	 * 确定审核结果的时间戳，若状态为审核中，则该时间值为0
	 * @param auditTime 确定审核结果的时间戳
	 */
	public void setAuditTime(Long auditTime) {
		this.auditTime = auditTime;
	}
}
