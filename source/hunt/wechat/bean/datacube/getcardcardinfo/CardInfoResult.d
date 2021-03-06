module hunt.wechat.bean.datacube.getcardcardinfo.CardInfoResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 获取免费券数据接口－响应对象
 * 
 * 
 *
 */
class CardInfoResult : BaseResult {

	/**
	 * 数据列表
	 */
	List!(CardInfoResultInfo) list;

	public List!(CardInfoResultInfo) getList() {
		return list;
	}

	public void setList(List!(CardInfoResultInfo) list) {
		this.list = list;
	}
}
