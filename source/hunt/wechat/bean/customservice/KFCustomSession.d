module hunt.wechat.bean.customservice.KFCustomSession;

import hunt.wechat.bean.BaseResult;

/**
 * 客户的会话状态
 * @author Menng
 */
class KFCustomSession : BaseResult {
	private Integer createtime; // 会话接入的时间
	private string kf_account; // 正在接待的客服，为空表示没有人在接待

	public Integer getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Integer createtime) {
		this.createtime = createtime;
	}

	public string getKf_account() {
		return kf_account;
	}

	public void setKf_account(string kf_account) {
		this.kf_account = kf_account;
	}
}