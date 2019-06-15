module hunt.wechat.bean.paymch.MchReverseResult;

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
class MchReverseResult : MchBase{

	@XmlElement
	private string recall;

	public string getRecall() {
		return recall;
	}

	public void setRecall(string recall) {
		this.recall = recall;
	}


}
