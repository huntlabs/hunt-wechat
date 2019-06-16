module hunt.wechat.bean.customservice.KFAccount;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 客服基本信息
 * 
 * 
 */
class KFAccount : BaseResult {

	private List!(KF_List) kf_list;

	public List!(KF_List) getKf_list() {
		return kf_list;
	}

	public void setKf_list(List!(KF_List) kf_list) {
		this.kf_list = kf_list;
	}

	static class KF_List {
		private string kf_account; // 完整客服账号，格式为：账号前缀@公众号微信号
		private string kf_headimgurl; // 客服头像
		private string kf_id; // 客服工号
		private string kf_nick; // 客服昵称
		private string kf_wx;
		private string invite_wx;
		private Integer invite_expire_time;
		private string invite_status;

		public string getKf_account() {
			return kf_account;
		}

		public void setKf_account(string kf_account) {
			this.kf_account = kf_account;
		}

		public string getKf_headimgurl() {
			return kf_headimgurl;
		}

		public void setKf_headimgurl(string kf_headimgurl) {
			this.kf_headimgurl = kf_headimgurl;
		}

		public string getKf_id() {
			return kf_id;
		}

		public void setKf_id(string kf_id) {
			this.kf_id = kf_id;
		}

		public string getKf_nick() {
			return kf_nick;
		}

		public void setKf_nick(string kf_nick) {
			this.kf_nick = kf_nick;
		}

		public string getKf_wx() {
			return kf_wx;
		}

		public void setKf_wx(string kf_wx) {
			this.kf_wx = kf_wx;
		}

		public string getInvite_wx() {
			return invite_wx;
		}

		public void setInvite_wx(string invite_wx) {
			this.invite_wx = invite_wx;
		}

		public Integer getInvite_expire_time() {
			return invite_expire_time;
		}

		public void setInvite_expire_time(Integer invite_expire_time) {
			this.invite_expire_time = invite_expire_time;
		}

		public string getInvite_status() {
			return invite_status;
		}

		public void setInvite_status(string invite_status) {
			this.invite_status = invite_status;
		}

	}

}