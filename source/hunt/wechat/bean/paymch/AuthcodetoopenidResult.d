module hunt.wechat.bean.paymch.AuthcodetoopenidResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 刷卡支付 授权码查询OPENID 返回数据
 * @author LiYi
 *
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class AuthcodetoopenidResult : MchBase{

	@XmlElement
	private string openid;

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}
	
}
