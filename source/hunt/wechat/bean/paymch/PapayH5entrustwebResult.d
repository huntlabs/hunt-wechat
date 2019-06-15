module hunt.wechat.bean.paymch.PapayH5entrustwebResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class PapayH5entrustwebResult : MchBase {

	private string redirect_url;

	public string getRedirect_url() {
		return redirect_url;
	}

	public void setRedirect_url(string redirect_url) {
		this.redirect_url = redirect_url;
	}

}
