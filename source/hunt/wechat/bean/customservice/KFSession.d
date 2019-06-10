module hunt.wechat.bean.customservice.KFSession;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 客服会话
 * @author Menng
 */
public class KFSession : BaseResult {
	private List<SessionList> sessionlist; // 会话列表

	public List<SessionList> getSessionlist() {
		return sessionlist;
	}

	public void setSessionlist(List<SessionList> sessionlist) {
		this.sessionlist = sessionlist;
	}

	public static class SessionList {
		private Integer createtime; // 会话创建时间，UNIX时间戳
		private string openid; // 客户openid

		public Integer getCreatetime() {
			return createtime;
		}

		public void setCreatetime(Integer createtime) {
			this.createtime = createtime;
		}

		public string getOpenid() {
			return openid;
		}

		public void setOpenid(string openid) {
			this.openid = openid;
		}
	}
}