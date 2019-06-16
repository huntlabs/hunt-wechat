module hunt.wechat.bean.message.message.MsgmenuMessage;

import hunt.collection.List;

/**
 * 菜单消息
 * 
 * 
 */
class MsgmenuMessage : Message {

	public MsgmenuMessage() {
	}

	public MsgmenuMessage(string touser, Msgmenu msgmenu) {
		super(touser, "msgmenu");
		this.msgmenu = msgmenu;
	}

	private Msgmenu msgmenu;

	public Msgmenu getMsgmenu() {
		return msgmenu;
	}

	public void setMsgmenu(Msgmenu msgmenu) {
		this.msgmenu = msgmenu;
	}

	static class Msgmenu {

		private string head_content;

		private string tail_content;

		private List!(MenuOption) list;

		public string getHead_content() {
			return head_content;
		}

		public void setHead_content(string head_content) {
			this.head_content = head_content;
		}

		public string getTail_content() {
			return tail_content;
		}

		public void setTail_content(string tail_content) {
			this.tail_content = tail_content;
		}

		public List!(MenuOption) getList() {
			return list;
		}

		public void setList(List!(MenuOption) list) {
			this.list = list;
		}

	}

	static class MenuOption {
		private string id;
		private string content;

		public string getId() {
			return id;
		}

		public void setId(string id) {
			this.id = id;
		}

		public string getContent() {
			return content;
		}

		public void setContent(string content) {
			this.content = content;
		}

	}
}
