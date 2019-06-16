/**
 * 
 */
module hunt.wechat.bean.shakearound.device.group.del.DeviceGroupDelete;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－删除分组－请求参数
 * 
 * 
 */
class DeviceGroupDelete {

	/**
	 * 分组唯一标识，全局唯一
	 * 必填
	 */
	@JSONField(name = "group_id")
	private Integer groupId;

	/**
	 * @return 分组唯一标识
	 */
	public Integer getGroupId() {
		return groupId;
	}

	/**
	 * 分组唯一标识，全局唯一
	 * 必填
	 * @param groupId 分组唯一标识
	 */
	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}
}
