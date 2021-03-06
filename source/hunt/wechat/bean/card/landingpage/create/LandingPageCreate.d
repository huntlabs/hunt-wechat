module hunt.wechat.bean.card.landingpage.create.LandingPageCreate;

import hunt.collection.List;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券发放－创建货架接口－请求参数
 * 
 * 
 *
 */
class LandingPageCreate {
	
	/**
	 * 页面的banner图片链接，须调用，建议尺寸为640*300。
	 * 必填：是
	 */
	private string banner;
	
	/**
	 * 页面的title。
	 * 必填：是
	 */
	@JSONField(name = "page_title")
	private string pageTitle;
	
	/**
	 * 页面是否可以分享,填入true/false
	 * 必填：是
	 */
	@JSONField(name = "can_share")
	private Boolean canShare;
	
	/**
	 * 投放页面的场景值：
	 * SCENE_NEAR_BY 附近 
	 * SCENE_MENU 自定义菜单 
	 * SCENE_QRCODE 二维码 
	 * SCENE_ARTICLE 公众号文章 
	 * SCENE_H5 h5页面 
	 * SCENE_IVR 自动回复 
	 * SCENE_CARD_CUSTOM_CELL 卡券自定义cell
	 * 必填：是
	 */
	private string scene;
	@JSONField(name = "card_list")
	
	/**
	 * 卡券列表
	 * 必填：是
	 */
	private List!(LandingPageCreateCard) cardList;
	
	/**
	 * @return 页面的banner图片链接
	 */
	public string getBanner() {
		return banner;
	}
	
	/**
	 * 页面的banner图片链接，须调用，建议尺寸为640*300。
	 * 必填：是
	 * @param banner 页面的banner图片链接
	 */
	public void setBanner(string banner) {
		this.banner = banner;
	}
	
	/**
	 * @return 页面的title
	 */
	public string getPageTitle() {
		return pageTitle;
	}
	
	/**
	 * 页面的title。
	 * 必填：是
	 * @param pageTitle 页面的title
	 */
	public void setPageTitle(string pageTitle) {
		this.pageTitle = pageTitle;
	}
	
	/**
	 * @return 页面是否可以分享
	 */
	public Boolean getCanShare() {
		return canShare;
	}
	
	/**
	 * 页面是否可以分享,填入true/false
	 * 必填：是
	 * @param canShare 页面是否可以分享
	 */
	public void setCanShare(Boolean canShare) {
		this.canShare = canShare;
	}
	
	/**
	 * 投放页面的场景值：
	 * SCENE_NEAR_BY 附近 
	 * SCENE_MENU 自定义菜单 
	 * SCENE_QRCODE 二维码 
	 * SCENE_ARTICLE 公众号文章 
	 * SCENE_H5 h5页面 
	 * SCENE_IVR 自动回复 
	 * SCENE_CARD_CUSTOM_CELL 卡券自定义cell
	 * @return 投放页面的场景值
	 */
	public string getScene() {
		return scene;
	}
	
	/**
	 * 投放页面的场景值：
	 * SCENE_NEAR_BY 附近 
	 * SCENE_MENU 自定义菜单 
	 * SCENE_QRCODE 二维码 
	 * SCENE_ARTICLE 公众号文章 
	 * SCENE_H5 h5页面 
	 * SCENE_IVR 自动回复 
	 * SCENE_CARD_CUSTOM_CELL 卡券自定义cell
	 * 必填：是
	 * @param scene 投放页面的场景值
	 */
	public void setScene(string scene) {
		this.scene = scene;
	}
	
	/**
	 * @return 卡券列表
	 */
	public List!(LandingPageCreateCard) getCardList() {
		return cardList;
	}
	
	/**
	 * 卡券列表
	 * 必填：是
	 * @param cardList 卡券列表
	 */
	public void setCardList(List!(LandingPageCreateCard) cardList) {
		this.cardList = cardList;
	}
}
