module hunt.wechat.bean.card.landingpage.create.LandingPageCreateResult;

//import com.alibaba.fastjson.annotation.JSONField;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券发放－创建货架接口－响应参数
 * 
 * 
 *
 */
class LandingPageCreateResult : BaseResult {

	/**
	 * 货架链接。
	 */
	private string url;
	
	/**
	 * 货架ID。货架的唯一标识。
	 */
	@JSONField(name = "page_id")
	private Integer pageId;
	
	/**
	 * @return 货架链接
	 */
	public string getUrl() {
		return url;
	}
	
	/**
	 * @param url 货架链接
	 */
	public void setUrl(string url) {
		this.url = url;
	}
	
	/**
	 * 货架ID。货架的唯一标识。
	 * @return 货架ID
	 */
	public Integer getPageId() {
		return pageId;
	}
	
	/**
	 * 货架ID。货架的唯一标识。
	 * @param pageId 货架ID
	 */
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
}
