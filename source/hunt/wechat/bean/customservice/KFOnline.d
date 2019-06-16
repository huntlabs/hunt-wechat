module hunt.wechat.bean.customservice.KFOnline;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 在线客服的接待信息
 * 
 */
class KFOnline : BaseResult {
	private List!(KF_Online_List) kf_online_list;

	public List!(KF_Online_List) getKf_online_list() {
		return kf_online_list;
	}

	public void setKf_online_list(List!(KF_Online_List) kf_online_list) {
		this.kf_online_list = kf_online_list;
	}

	static class KF_Online_List {
		private string kf_account; // 完整客服账号，格式为：账号前缀@公众号微信号
		private string status; // 客服在线状态 1：pc在线，2：手机在线。若pc和手机同时在线则为 1+2=3
		private string kf_id; // 客服工号
		private string auto_accept; // 客服设置的最大自动接入数
		private string accepted_case; // 客服当前正在接待的会话数

		public string getKf_account() {
			return kf_account;
		}

		public void setKf_account(string kf_account) {
			this.kf_account = kf_account;
		}

		public string getStatus() {
			return status;
		}

		public void setStatus(string status) {
			this.status = status;
		}

		public string getKf_id() {
			return kf_id;
		}

		public void setKf_id(string kf_id) {
			this.kf_id = kf_id;
		}

		public string getAuto_accept() {
			return auto_accept;
		}

		public void setAuto_accept(string auto_accept) {
			this.auto_accept = auto_accept;
		}

		public string getAccepted_case() {
			return accepted_case;
		}

		public void setAccepted_case(string accepted_case) {
			this.accepted_case = accepted_case;
		}
	}
}