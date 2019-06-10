module hunt.wechat.bean.message.massmessage.MassMessage;

import hunt.collection.Set;

import hunt.wechat.bean.message.preview.Preview;

/**
 * 高级群发接口数据
 * 
 * @author LiYi
 *
 */
public abstract class MassMessage {

	protected string msgtype;

	private Filter filter;// 用于特定组

	private Set<string> touser;// 用于指定用户

	private string clientmsgid; // 开发者侧群发msgid，长度限制64字节，如不填，则后台默认以群发范围和群发内容的摘要值做为clientmsgid

	public string getMsgtype() {
		return msgtype;
	}

	public void setMsgtype(string msgtype) {
		this.msgtype = msgtype;
	}

	public Filter getFilter() {
		return filter;
	}

	public void setFilter(Filter filter) {
		this.filter = filter;
	}

	public Set<string> getTouser() {
		return touser;
	}

	public void setTouser(Set<string> touser) {
		this.touser = touser;
	}

	public string getClientmsgid() {
		return clientmsgid;
	}

	public void setClientmsgid(string clientmsgid) {
		this.clientmsgid = clientmsgid;
	}

	/**
	 * 转换为预览对象
	 * 
	 * @return Preview 子对象
	 */
	public abstract Preview convert();

}
