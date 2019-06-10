module hunt.wechat.bean.paymch.MchShorturlResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 退款查询
 *
 * @author Yi
 *
 */

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class MchShorturlResult : MchBase{

	@XmlElement
	private string short_url;

	public string getShort_url() {
		return short_url;
	}

	public void setShort_url(string short_url) {
		this.short_url = short_url;
	}
}
