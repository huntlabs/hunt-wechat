/**
 * 
 */
module hunt.wechat.bean.shakearound.user.getshakeinfo.UserGetShakeInfoResultDataBeaconInfo;

/**
 * 微信摇一摇周边－获取设备及用户信息－响应参数－设备及用户信息－设备信息
 * 
 * 
 */
class UserGetShakeInfoResultDataBeaconInfo {

	/**
	 * Beacon信号与手机的距离，单位为米
	 */
	private Double distance;
	private Integer major;
	private Integer minor;
	private string uuid;

	public this() {
	}

	public this(Double distance, Integer major, Integer minor, string uuid) {
		this.distance = distance;
		this.major = major;
		this.minor = minor;
		this.uuid = uuid;
	}

	/**
	 * Beacon信号与手机的距离，单位为米
	 * @return Beacon信号与手机的距离
	 */
	public Double getDistance() {
		return distance;
	}
	
	/**
	 * Beacon信号与手机的距离，单位为米
	 * @param distance Beacon信号与手机的距离
	 */
	public void setDistance(Double distance) {
		this.distance = distance;
	}
	
	/**
	 * @return the major
	 */
	public Integer getMajor() {
		return major;
	}
	
	/**
	 * @param major the major
	 */
	public void setMajor(Integer major) {
		this.major = major;
	}
	
	/**
	 * @return the minor
	 */
	public Integer getMinor() {
		return minor;
	}
	
	/**
	 * @param minor the minor
	 */
	public void setMinor(Integer minor) {
		this.minor = minor;
	}
	
	/**
	 * @return the uuid
	 */
	public string getUuid() {
		return uuid;
	}
	
	/**
	 * @param uuid the uuid
	 */
	public void setUuid(string uuid) {
		this.uuid = uuid;
	}
}
