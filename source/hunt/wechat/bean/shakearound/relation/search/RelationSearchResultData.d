/**
 * 
 */
module hunt.wechat.bean.shakearound.relation.search.RelationSearchResultData;

import hunt.collection.List;

//import com.alibaba.fastjson.annotation.JSONField;


/**
 * 微信摇一摇周边－查询设备与页面的关联关系－响应参数－关联信息
 * 
 * 
 */
class RelationSearchResultData {

	/**
	 * 关联关系列表
	 */
	private List!(RelationSearchResultDataRelation) relations;
	
	/**
	 * 设备或页面的关联关系总数
	 */
	@JSONField(name = "total_count")
	private Integer totalCount;

	/**
	 * @return 关联关系列表
	 */
	public List!(RelationSearchResultDataRelation) getRelations() {
		return relations;
	}

	/**
	 * @param relations 关联关系列表
	 */
	public void setRelations(List!(RelationSearchResultDataRelation) relations) {
		this.relations = relations;
	}

	/**
	 * @return 设备或页面的关联关系总数
	 */
	public Integer getTotalCount() {
		return totalCount;
	}

	/**
	 * @param totalCount 设备或页面的关联关系总数
	 */
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
}
