module hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfoResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 拉取卡券概况数据接口－响应对象
 * 
 * @author Moyq5
 *
 */
class BizuinInfoResult : BaseResult {

	/**
	 * 记录列表
	 */
	List!(BizuinInfoResultInfo) list;

	public List!(BizuinInfoResultInfo) getList() {
		return list;
	}

	public void setList(List!(BizuinInfoResultInfo) list) {
		this.list = list;
	}
}
