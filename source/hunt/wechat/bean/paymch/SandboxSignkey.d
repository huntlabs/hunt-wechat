module hunt.wechat.bean.paymch.SandboxSignkey;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SandboxSignkey : MchBase {

	private string sandbox_signkey;

	public string getSandbox_signkey() {
		return sandbox_signkey;
	}

	public void setSandbox_signkey(string sandbox_signkey) {
		this.sandbox_signkey = sandbox_signkey;
	}

}
