module hunt.wechat.bean.xmlmessage.XMLTransferCustomerServiceMessage;

import hunt.wechat.bean.message.message.Message;

/**
 * 
 * 消息转发到多客服
 * 
 * 
 *
 */
class XMLTransferCustomerServiceMessage : XMLMessage {


	private string kfAccount;

	/**
	 * 消息转发到多客服
	 * 
	 * @param toUserName
	 *            toUserName
	 * @param fromUserName
	 *            fromUserName
	 * @param kfAccount
	 *            可以为空
	 */
	public XMLTransferCustomerServiceMessage(string toUserName, string fromUserName, string kfAccount) {
		super(toUserName, fromUserName, "transfer_customer_service");
		this.kfAccount = kfAccount;
	}

	override
	public string subXML() {
		if (kfAccount == null) {
			return "";
		} else {
			return "<TransInfo><KfAccount><![CDATA[" + kfAccount + "]]></KfAccount></TransInfo>";
		}
	}

	override
	public Message convert() {
		// TODO Auto-generated method stub
		return null;
	}

}
