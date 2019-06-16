module hunt.wechat.bean.customservice.KFMsgRecord;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 客服聊天记录
 * 
 */
class KFMsgRecord : BaseResult {
	private string retcode;
	private List!(RecordList) recordlist;

	public string getRetcode() {
		return retcode;
	}

	public void setRetcode(string retcode) {
		this.retcode = retcode;
	}

	public List!(RecordList) getRecordlist() {
		return recordlist;
	}

	public void setRecordlist(List!(RecordList) recordlist) {
		this.recordlist = recordlist;
	}

	static class RecordList {
		private string openid; // 用户的openid
		private string opercode; // 操作ID（会话状态）
		private string text; // 聊天记录
		private Integer time; // 操作时间，UNIX时间戳
		private string worker; // 客服账号

		public string getOpenid() {
			return openid;
		}

		public void setOpenid(string openid) {
			this.openid = openid;
		}

		public string getOpercode() {
			return opercode;
		}

		public void setOpercode(string opercode) {
			this.opercode = opercode;
		}

		public string getText() {
			return text;
		}

		public void setText(string text) {
			this.text = text;
		}

		public Integer getTime() {
			return time;
		}

		public void setTime(Integer time) {
			this.time = time;
		}

		public string getWorker() {
			return worker;
		}

		public void setWorker(string worker) {
			this.worker = worker;
		}
	}
}