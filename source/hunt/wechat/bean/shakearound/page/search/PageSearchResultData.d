/**
 * 
 */
module hunt.wechat.bean.shakearound.page.search.PageSearchResultData;

import hunt.collection.List;

import hunt.wechat.bean.shakearound.page.PageInfo;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－页面管理－查询页面列表－响应参数－页面列表数据
 * 
 * 
 */
class PageSearchResultData {

	/**
	 * 页面列表
	 */
	private List!(PageInfo) pages;
	
	/**
	 * 商户名下的页面总数
	 */
	@JSONField(name = "total_count")
	private Integer totalCount;

	/**
	 * @return 页面列表
	 */
	public List!(PageInfo) getPages() {
		return pages;
	}

	/**
	 * @param pages 页面列表
	 */
	public void setPages(List!(PageInfo) pages) {
		this.pages = pages;
	}

	/**
	 * @return 商户名下的页面总数
	 */
	public Integer getTotalCount() {
		return totalCount;
	}

	/**
	 * @param totalCount 商户名下的页面总数
	 */
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
}
