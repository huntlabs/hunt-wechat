module hunt.wechat.bean.xmlmessage.XMLMessage;

import hunt.Exceptions;
import hunt.io.OutputStream;
import hunt.util.Serialize;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.qq.weixin.mp.aes.AesException;
import com.qq.weixin.mp.aes.WXBizMsgCrypt;

import hunt.wechat.bean.message.message.Message;

public abstract class XMLMessage : Serializable{
	
	private static Logger logger = LoggerFactory.getLogger(XMLMessage.class);

	private static final long serialVersionUID = 8901661274548077509L;

	protected string toUserName;
	protected string fromUserName;
	protected string msgType;

	protected XMLMessage(string toUserName, string fromUserName, string msgType) {
		super();
		this.toUserName = toUserName;
		this.fromUserName = fromUserName;
		this.msgType = msgType;
	}

	/**
	 * 子类自定义XML
	 * @return XML
	 */
	public abstract string subXML();
	
	/**
	 * 转换为  Message 对象
	 * @return Message
	 */
	public abstract Message convert();

	public string toXML(){
		StringBuilder sb = new StringBuilder();
		sb.append("<xml>");
		sb.append("<ToUserName><![CDATA["+toUserName+"]]></ToUserName>");
		sb.append("<FromUserName><![CDATA["+fromUserName+"]]></FromUserName>");
		sb.append("<CreateTime>"+System.currentTimeMillis()/1000+"</CreateTime>");
		sb.append("<MsgType><![CDATA["+msgType+"]]></MsgType>");
		sb.append(subXML());
		sb.append("</xml>");
		return sb.toString();
	}

	public bool outputStreamWrite(OutputStream outputStream){
		try {
			outputStream.write(toXML().getBytes("utf-8"));
			outputStream.flush();
		} catch (UnsupportedEncodingException e) {
			logger.error("", e);
			return false;
		} catch (IOException e) {
			logger.error("", e);
			return false;
		}
		return true;
	}

	public bool outputStreamWrite(OutputStream outputStream,WXBizMsgCrypt bizMsgCrypt){
		if(bizMsgCrypt != null){
			try {
				string outputStr = bizMsgCrypt.encryptMsg(toXML(), System.currentTimeMillis()+"",UUID.randomUUID().toString());
				outputStream.write(outputStr.getBytes("utf-8"));
				outputStream.flush();
			} catch (UnsupportedEncodingException e) {
				logger.error("", e);
				return false;
			} catch (IOException e) {
				logger.error("", e);
				return false;
			} catch (AesException e) {
				logger.error("", e);
				return false;
			}
			return true;
		}else{
			return outputStreamWrite(outputStream);
		}
	}

	public string getToUserName() {
		return toUserName;
	}

	public string getFromUserName() {
		return fromUserName;
	}

	public string getMsgType() {
		return msgType;
	}
	
	
}
