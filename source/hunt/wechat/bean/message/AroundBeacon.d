module hunt.wechat.bean.message.AroundBeacon;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 
 * 摇一摇 周边事件数据
 * 
 * @author LiYi
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="AroundBeacon")
class AroundBeacon {
	
	@XmlElement(name="Uuid")
	private string uuid;
	
	@XmlElement(name="Major")
	private string major;
	
	@XmlElement(name="Minor")
	private string minor;
	
	@XmlElement(name="Distance")
	private string distance;

	public string getUuid() {
		return uuid;
	}

	public void setUuid(string uuid) {
		this.uuid = uuid;
	}

	public string getMajor() {
		return major;
	}

	public void setMajor(string major) {
		this.major = major;
	}

	public string getMinor() {
		return minor;
	}

	public void setMinor(string minor) {
		this.minor = minor;
	}

	public string getDistance() {
		return distance;
	}

	public void setDistance(string distance) {
		this.distance = distance;
	}
}
