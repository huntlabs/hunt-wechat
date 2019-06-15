module hunt.wechat.bean.datacube.getcardmembercardinfo.MemberCardInfoResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 拉取会员卡数据接口－响应对象
 * 
 * @author Moyq5
 *
 */
class MemberCardInfoResult : BaseResult {

	List!(MemberCardInfoResultInfo) list;

	public List!(MemberCardInfoResultInfo) getList() {
		return list;
	}

	public void setList(List!(MemberCardInfoResultInfo) list) {
		this.list = list;
	}
}
