/**
 * 
 */
module hunt.wechat.bean.shakearound.device.group.add.DeviceGroupAdd;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－新增分组－请求参数
 * @author Moyq5
 * @date 2016年7月30日
 */
class DeviceGroupAdd {

	/**
	 * 分组名称，不超过100汉字或200个英文字母
	 * 必填
	 */
	@JSONField(name = "group_name")
	private string groupName;

	/**
	 * 分组名称，不超过100汉字或200个英文字母
	 * @return 分组名称
	 */
	public string getGroupName() {
		return groupName;
	}

	/**
	 * 分组名称，不超过100汉字或200个英文字母
	 * 必填
	 * @param groupName 分组名称
	 */
	public void setGroupName(string groupName) {
		this.groupName = groupName;
	}
}
