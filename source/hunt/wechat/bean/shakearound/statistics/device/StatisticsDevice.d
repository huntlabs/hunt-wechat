/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.device.StatisticsDevice;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.shakearound.device.DeviceIdentifier;
import hunt.wechat.bean.shakearound.statistics.AbstractStatistics;

/**
 * 微信摇一摇周边－以设备为维度的数据统计接口－请求参数
 * 
 * 
 */
class StatisticsDevice : AbstractStatistics {

	/**
	 * 指定页面的设备ID
	 * 必填
	 */
	@JSONField(name = "device_identifier")
	private DeviceIdentifier deviceIdentifier;
	
	/**
	 * @return 页面的设备ID
	 */
	public DeviceIdentifier getDeviceIdentifier() {
		return deviceIdentifier;
	}

	/**
	 * 指定页面的设备ID
	 * 必填
	 * @param deviceIdentifier 页面的设备ID
	 */
	public void setDeviceIdentifier(DeviceIdentifier deviceIdentifier) {
		this.deviceIdentifier = deviceIdentifier;
	}

}
