/**
 * 
 */
module hunt.wechat.bean.shakearound.statistics.devicelist.StatisticsDeviceListResultData;

import hunt.collection.List;

/**
 * 微信摇一摇周边－批量查询设备统计数据接口－响应参数－统计数据
 * 
 * 
 */
class StatisticsDeviceListResultData {

	/**
	 * 设备统计数据列表
	 */
	private List!(StatisticsDeviceListResultDataDevice) devices;

	/**
	 * @return 设备统计数据列表
	 */
	public List!(StatisticsDeviceListResultDataDevice) getDevices() {
		return devices;
	}

	/**
	 * @param devices 设备统计数据列表
	 */
	public void setDevices(List!(StatisticsDeviceListResultDataDevice) devices) {
		this.devices = devices;
	}
}
