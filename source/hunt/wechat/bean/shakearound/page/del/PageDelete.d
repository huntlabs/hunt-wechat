/**
 * 
 */
module hunt.wechat.bean.shakearound.page.del.PageDelete;

import com.alibaba.fastjson.annotation.JSONField;


/**
 * 微信摇一摇周边－页面管理－删除页面－请求参数
 * 
 * 
 */
class PageDelete {

	/**
	 * 指定页面的id
	 * 必填
	 */
	@JSONField(name = "page_id")
	private Integer pageId;

	/**
	 * @return 指定页面的id
	 */
	public Integer getPageId() {
		return pageId;
	}

	/**
	 * 指定页面的id
	 * 必填
	 * @param pageId 页面的id
	 */
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
}
