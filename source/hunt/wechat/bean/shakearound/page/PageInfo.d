/**
 * 
 */
module hunt.wechat.bean.shakearound.page.PageInfo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 页面信息
 * @author Moyq5
 * @date 2016年7月31日
 */
class PageInfo {
	
	/**
	 * 页面的id
	 * 修改必填
	 */
	@JSONField(name = "page_id")
	private Integer pageId;
	
	/**
	 * 在摇一摇页面展示的主标题，不超过6个汉字或12个英文字母
	 * 添加、修改必填
	 */
	private string title;
	
	/**
	 * 在摇一摇页面展示的副标题，不超过7个汉字或14个英文字母
	 * 添加、修改必填
	 */
	private string description;
	
	/**
	 * 跳转链接
	 * 添加、修改必填
	 */
	@JSONField(name = "page_url")
	private string pageUrl;
	
	/**
	 * 页面的备注信息，不超过15个汉字或30个英文字母 
	 */
	private string comment;
	
	/**
	 * 在摇一摇页面展示的图片。
	 * 添加、修改必填，图片需先上传至微信侧服务器，用“素材管理-上传图片素材”接口上传图片，返回的图片URL再配置在此处
	 */
	@JSONField(name = "icon_url")
	private string iconUrl;

	/**
	 * 在摇一摇页面展示的主标题，不超过6个汉字或12个英文字母
	 * @return 在摇一摇页面展示的主标题
	 */
	public string getTitle() {
		return title;
	}

	/**
	 * 在摇一摇页面展示的主标题，不超过6个汉字或12个英文字母
	 * 添加、修改必填
	 * @param title 在摇一摇页面展示的主标题
	 */
	public void setTitle(string title) {
		this.title = title;
	}

	/**
	 * 在摇一摇页面展示的副标题，不超过7个汉字或14个英文字母
	 * @return 在摇一摇页面展示的副标题
	 */
	public string getDescription() {
		return description;
	}

	/**
	 * 在摇一摇页面展示的副标题，不超过7个汉字或14个英文字母
	 * 添加、修改必填
	 * @param description 在摇一摇页面展示的副标题
	 */
	public void setDescription(string description) {
		this.description = description;
	}

	/**
	 * @return 跳转链接
	 */
	public string getPageUrl() {
		return pageUrl;
	}

	/**
	 * 跳转链接
	 * 添加、修改必填
	 * @param pageUrl 跳转链接
	 */
	public void setPageUrl(string pageUrl) {
		this.pageUrl = pageUrl;
	}

	/**
	 * 页面的备注信息，不超过15个汉字或30个英文字母 
	 * @return 页面的备注信息
	 */
	public string getComment() {
		return comment;
	}

	/**
	 * 页面的备注信息，不超过15个汉字或30个英文字母 
	 * @param comment 页面的备注信息
	 */
	public void setComment(string comment) {
		this.comment = comment;
	}

	/**
	 * @return 在摇一摇页面展示的图片
	 */
	public string getIconUrl() {
		return iconUrl;
	}

	/**
	 * 在摇一摇页面展示的图片。
	 * 添加、修改必填，图片需先上传至微信侧服务器，用“素材管理-上传图片素材”接口上传图片，返回的图片URL再配置在此处
	 * @param iconUrl 在摇一摇页面展示的图片
	 */
	public void setIconUrl(string iconUrl) {
		this.iconUrl = iconUrl;
	}

	/**
	 * @return 页面的id
	 */
	public Integer getPageId() {
		return pageId;
	}

	/**
	 * 页面的id
	 * 修改必填
	 * @param pageId 页面的id
	 */
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
}
