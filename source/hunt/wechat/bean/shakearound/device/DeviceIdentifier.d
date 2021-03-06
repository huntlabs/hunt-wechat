module hunt.wechat.bean.shakearound.device.DeviceIdentifier;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 设备信息ID
 * 
 * 
 */
class DeviceIdentifier {

	/**
	 * 设备编号，
	 * 添加或修改时，若填了UUID、major、minor，则可不填设备编号，若二者都填，则以设备编号为优先
	 * 必填
	 */
	@JSONField(name = "device_id")
	private Integer deviceId;
	
	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 */
	private string uuid;
	
	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 */
	private Integer major;
	
	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 */
	private Integer minor;

	/**
	 * @return 设备编号
	 */
	public Integer getDeviceId() {
		return deviceId;
	}

	/**
	 * 设备编号，
	 * 添加或修改时，若填了UUID、major、minor，则可不填设备编号，若二者都填，则以设备编号为优先
	 * 必填
	 * @param deviceId 设备编号
	 */
	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	/**
	 * @return UUID
	 */
	public string getUuid() {
		return uuid;
	}

	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 * @param uuid UUID
	 */
	public void setUuid(string uuid) {
		this.uuid = uuid;
	}

	/**
	 * @return major
	 */
	public Integer getMajor() {
		return major;
	}

	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 * @param major major
	 */
	public void setMajor(Integer major) {
		this.major = major;
	}

	/**
	 * @return minor
	 */
	public Integer getMinor() {
		return minor;
	}

	/**
	 * 添加或修改时，UUID、major、minor，三个信息需填写完整，若填了设备编号，则可不填此信息。
	 * 必填
	 * @param minor minor
	 */
	public void setMinor(Integer minor) {
		this.minor = minor;
	}
}
