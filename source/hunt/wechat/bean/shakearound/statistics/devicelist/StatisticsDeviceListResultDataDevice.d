/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.devicelist.StatisticsDeviceListResultDataDevice;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.shakearound.statistics.AbstractStatisticsResultData;

/**
 * 微信摇一摇周边－批量查询设备统计数据接口－响应参数－统计结果数据－设备统计数据
 * 
 * 
 */
class StatisticsDeviceListResultDataDevice : AbstractStatisticsResultData {

	/**
	 * 设备编号
	 */
	@JSONField(name = "device_id")
	private Integer deviceId;
	
	private Integer major;
	
	private Integer minor;
	
	private string uuid;
	
	/**
	 * @return 设备编号
	 */
	public Integer getDeviceId() {
		return deviceId;
	}
	/**
	 * @param deviceId 设备编号
	 */
	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}
	/**
	 * @return 设备major
	 */
	public Integer getMajor() {
		return major;
	}
	/**
	 * @param major 设备major
	 */
	public void setMajor(Integer major) {
		this.major = major;
	}
	/**
	 * @return 设备minor
	 */
	public Integer getMinor() {
		return minor;
	}
	/**
	 * @param minor 设备minor
	 */
	public void setMinor(Integer minor) {
		this.minor = minor;
	}
	/**
	 * @return 设备uuid
	 */
	public string getUuid() {
		return uuid;
	}
	/**
	 * @param uuid 设备uuid
	 */
	public void setUuid(string uuid) {
		this.uuid = uuid;
	}
}
