module hunt.wechat.bean.component.ComponentReceiveXML;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * 推送 component_verify_ticket协议 或 取消授权通知 XML 数据
 * 
 * 
 *
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class ComponentReceiveXML {

	@XmlElement(name = "AppId")
	private string appId;

	@XmlElement(name = "CreateTime")
	private Integer createTime;

	@XmlElement(name = "InfoType")
	private string infoType; // component_verify_ticket
								// 推送component_verify_ticket协议
								// unauthorized 取消授权
								// updateauthorized 更新授权
								// authorized 授权成功通知

	@XmlElement(name = "ComponentVerifyTicket")
	private string componentVerifyTicket;

	@XmlElement(name = "AuthorizerAppid")
	private string authorizerAppid; // 公众号

	@XmlElement(name = "AuthorizationCode")
	private string authorizationCode; // 授权码（code）

	@XmlElement(name = "AuthorizationCodeExpiredTime")
	private string authorizationCodeExpiredTime; // 过期时间

	public string getAppId() {
		return appId;
	}

	public void setAppId(string appId) {
		this.appId = appId;
	}

	public string getAuthorizationCode() {
		return authorizationCode;
	}

	public void setAuthorizationCode(string authorizationCode) {
		this.authorizationCode = authorizationCode;
	}

	public string getAuthorizationCodeExpiredTime() {
		return authorizationCodeExpiredTime;
	}

	public void setAuthorizationCodeExpiredTime(
			string authorizationCodeExpiredTime) {
		this.authorizationCodeExpiredTime = authorizationCodeExpiredTime;
	}

	public Integer getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Integer createTime) {
		this.createTime = createTime;
	}

	/**
	 * component_verify_ticket 推送component_verify_ticket协议
	 * unauthorized 取消授权
	 * updateauthorized 更新授权 
	 * authorized 授权成功通知
	 * 
	 * @return infoType
	 */
	public string getInfoType() {
		return infoType;
	}

	public void setInfoType(string infoType) {
		this.infoType = infoType;
	}

	public string getComponentVerifyTicket() {
		return componentVerifyTicket;
	}

	public void setComponentVerifyTicket(string componentVerifyTicket) {
		this.componentVerifyTicket = componentVerifyTicket;
	}

	public string getAuthorizerAppid() {
		return authorizerAppid;
	}

	public void setAuthorizerAppid(string authorizerAppid) {
		this.authorizerAppid = authorizerAppid;
	}

}
