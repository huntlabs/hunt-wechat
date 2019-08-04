module hunt.wechat.bean.card.BaseInfo;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券基础信息
 * 
 * 
 *
 */
class BaseInfo {

	/**
	 * 卡券的商户logo，建议像素为300*300。
	 * 添加必填
	 */
	@JSONField(name = "logo_url")
	private string logoUrl;

	/**
	 * 商户名字,字数上限为12个汉字。
	 * 添加必填，不支持修改
	 */
	@JSONField(name = "brand_name")
	private string brandName;

	/**
	 * 
	 * "CODE_TYPE_TEXT"，文本；
	 * "CODE_TYPE_BARCODE"，一维码； 
	 * "CODE_TYPE_QRCODE"，二维码；
	 * "CODE_TYPE_ONLY_QRCODE"，二维码无code显示；
	 * "CODE_TYPE_ONLY_BARCODE"，一维码无code显示；
	 * "CODE_TYPE_NONE"，不显示code和条形码类型
	 * 添加必填
	 */
	@JSONField(name = "code_type")
	private string codeType;

	/**
	 * 卡券名，字数上限为9个汉字。(建议涵盖卡券属性、服务及金额)。
	 * 添加必填
	 */
	private string title;

	/**
	 * 券名，字数上限为18个汉字。
	 */
	@JSONField(name = "sub_title")
	private string subTitle;

	/**
	 * 券颜色。按色彩规范标注填写Color010-Color100
	 * 添加必填
	 */
	private string color;

	/**
	 * 卡券使用提醒，字数上限为16个汉字。
	 * 添加必填
	 */
	private string notice;

	/**
	 * 客服电话。
	 */
	@JSONField(name = "service_phone")
	private string servicePhone;

	/**
	 * 卡券使用说明，字数上限为1024个汉字。
	 * 添加必填
	 */
	private string description;

	/**
	 * 使用日期，有效期的信息。
	 * 添加必填
	 */
	@JSONField(name = "date_info")
	private BaseInfoDateInfo dateInfo;

	/**
	 * 商品信息。
	 * 添加必填，不支持修改
	 */
	private BaseInfoSku sku;

	/**
	 * 每人可领券的数量限制,不填写默认为50。
	 */
	@JSONField(name = "get_limit")
	private Integer getLimit;
	
	/**
	 * 每人可核销的数量限制,不填写默认为50。
	 */
	@JSONField(name = "use_limit")
	private Integer useLimit;

	/**
	 * 是否自定义Code码。 填写true或false，默认为false。 
	 * 通常自有优惠码系统的开发者选择自定义Code码，并在卡券投放时带入 
	 * 不支持修改
	 */
	@JSONField(name = "use_custom_code")
	private Boolean useCustomCode;
	
	/**
	 * 填入 GET_CUSTOM_CODE_MODE_DEPOSIT 表示该卡券为预存code模式卡券， 须导入超过库存数目的自定义code后方可投放， 填入该字段后，quantity字段须为0,须导入code 后再增加库存
	 */
	@JSONField(name = "get_custom_code_mode")
	private string getCustomCodeMode;

	/**
	 * 是否指定用户领取，填写true或false。默认为false。 
	 * 通常指定特殊用户群体投放卡券或防止刷券时选择指定用户领取。
	 * 不支持修改
	 */
	@JSONField(name = "bind_openid")
	private Boolean bindOpenid;

	/**
	 * 卡券领取页面是否可分享。
	 */
	@JSONField(name = "can_share")
	private Boolean canShare;

	/**
	 * 卡券是否可转赠。
	 */
	@JSONField(name = "can_give_friend")
	private Boolean canGiveFriend;

	/**
	 * 门店位置poiid。
	 * 调用POI门店管理接口获取门店位置poiid。
	 * 具备线下门店的商户为必填。
	 */
	@JSONField(name = "location_id_list")
	private Integer[] locationIdList;

	/**
	 * 卡券顶部居中的按钮，如“立即使用”，仅在卡券状态正常(可以核销)时显示
	 */
	@JSONField(name = "center_title")
	private string centerTitle;

	/**
	 * 显示在入口下方的提示语，如“立即享受优惠”，仅在卡券状态正常(可以核销)时显示。
	 */
	@JSONField(name = "center_sub_title")
	private string centerSubTitle;

	/**
	 * 顶部居中的url，仅在卡券状态正常(可以核销)时显示。
	 */
	@JSONField(name = "center_url")
	private string centerUrl;

	/**
	 * 自定义跳转外链的入口名字， 如“立即使用”。详情见活用自定义入口
	 */
	@JSONField(name = "custom_url_name")
	private string customUrlName;

	/**
	 * 自定义跳转的URL。
	 */
	@JSONField(name = "custom_url")
	private string customUrl;

	/**
	 * 显示在入口右侧的提示语。如“更多惊喜”。
	 */
	@JSONField(name = "custom_url_sub_title")
	private string customUrlSubTitle;

	/**
	 * 营销场景的自定义入口名称。如，“产品介绍”。
	 */
	@JSONField(name = "promotion_url_name")
	private string promotionUrlName;

	/**
	 * 入口跳转外链的地址链接。
	 */
	@JSONField(name = "promotion_url")
	private string promotionUrl;

	/**
	 * 显示在营销入口右侧的提示语。如，“卖场大优惠。”。
	 */
	@JSONField(name = "promotion_url_sub_title")
	private string promotionUrlSubTitle;

	/**
	 * 第三方来源名，例如同程旅游、大众点评。
	 * 不支持修改
	 */
	private string source;
	
	/**
	 * 会员卡是否支持全部门店，填写后商户门店更新时会自动同步至卡券
	 */
	@JSONField(name = "use_all_locations")
	private Boolean useAllLocations;				//2.8.20

	/**
	 * 卡券的商户logo。
	 */
	public string getLogoUrl() {
		return logoUrl;
	}

	/**
	 * 卡券的商户logo，建议像素为300*300。
	 * 添加必填
	 */
	public void setLogoUrl(string logoUrl) {
		this.logoUrl = logoUrl;
	}

	/**
	 * 商户名字。
	 */
	public string getBrandName() {
		return brandName;
	}

	/**
	 * 商户名字,字数上限为12个汉字。
	 * 添加必填，不支持修改
	 */
	public void setBrandName(string brandName) {
		this.brandName = brandName;
	}

	/**
	 * "CODE_TYPE_TEXT"，文本；
	 * "CODE_TYPE_BARCODE"，一维码； 
	 * "CODE_TYPE_QRCODE"，二维码；
	 * "CODE_TYPE_ONLY_QRCODE"，二维码无code显示；
	 * "CODE_TYPE_ONLY_BARCODE"，一维码无code显示；
	 * "CODE_TYPE_NONE"，不显示code和条形码类型
	 */
	public string getCodeType() {
		return codeType;
	}

	/**
	 * "CODE_TYPE_TEXT"，文本；
	 * "CODE_TYPE_BARCODE"，一维码； 
	 * "CODE_TYPE_QRCODE"，二维码；
	 * "CODE_TYPE_ONLY_QRCODE"，二维码无code显示；
	 * "CODE_TYPE_ONLY_BARCODE"，一维码无code显示；
	 * "CODE_TYPE_NONE"，不显示code和条形码类型
	 * 添加必填
	 */
	public void setCodeType(string codeType) {
		this.codeType = codeType;
	}

	/**
	 * 卡券名。
	 */
	public string getTitle() {
		return title;
	}

	/**
	 * 卡券名，字数上限为9个汉字。(建议涵盖卡券属性、服务及金额)。
	 * 添加必填
	 */
	public void setTitle(string title) {
		this.title = title;
	}

	/**
	 * 券名，字数上限为18个汉字。
	 */
	public string getSubTitle() {
		return subTitle;
	}

	/**
	 * 券名，字数上限为18个汉字。
	 */
	public void setSubTitle(string subTitle) {
		this.subTitle = subTitle;
	}

	/**
	 * 券颜色。按色彩规范标注填写Color010-Color100
	 */
	public string getColor() {
		return color;
	}

	/**
	 * 券颜色。按色彩规范标注填写Color010-Color100
	 * 添加必填
	 */
	public void setColor(string color) {
		this.color = color;
	}

	/**
	 * 卡券使用提醒，字数上限为16个汉字。
	 */
	public string getNotice() {
		return notice;
	}

	/**
	 * 卡券使用提醒，字数上限为16个汉字。
	 * 添加必填
	 */
	public void setNotice(string notice) {
		this.notice = notice;
	}

	/**
	 * 客服电话。
	 */
	public string getServicePhone() {
		return servicePhone;
	}

	/**
	 * 客服电话。
	 */
	public void setServicePhone(string servicePhone) {
		this.servicePhone = servicePhone;
	}

	/**
	 * 卡券使用说明，字数上限为1024个汉字。
	 */
	public string getDescription() {
		return description;
	}

	/**
	 * 卡券使用说明，字数上限为1024个汉字。
	 * 添加必填
	 */
	public void setDescription(string description) {
		this.description = description;
	}

	/**
	 * 使用日期，有效期的信息。
	 */
	public BaseInfoDateInfo getDateInfo() {
		return dateInfo;
	}

	/**
	 * 使用日期，有效期的信息。
	 * 添加必填
	 */
	public void setDateInfo(BaseInfoDateInfo dateInfo) {
		this.dateInfo = dateInfo;
	}

	/**
	 * 商品信息。
	 */
	public BaseInfoSku getSku() {
		return sku;
	}

	/**
	 * 商品信息。
	 * 添加必填，不支持修改
	 */
	public void setSku(BaseInfoSku sku) {
		this.sku = sku;
	}

	/**
	 * 每人可领券的数量限制,不填写默认为50。
	 */
	public Integer getGetLimit() {
		return getLimit;
	}

	/**
	 * 每人可领券的数量限制,不填写默认为50。
	 */
	public void setGetLimit(Integer getLimit) {
		this.getLimit = getLimit;
	}

	/**
	 * 是否自定义Code码。 
	 */
	public Boolean getUseCustomCode() {
		return useCustomCode;
	}

	/**
	 * 是否自定义Code码。 填写true或false，默认为false。 
	 * 通常自有优惠码系统的开发者选择自定义Code码，并在卡券投放时带入
	 * 不支持修改
	 */
	public void setUseCustomCode(Boolean useCustomCode) {
		this.useCustomCode = useCustomCode;
	}

	/**
	 * 是否指定用户领取。
	 */
	public Boolean getBindOpenid() {
		return bindOpenid;
	}

	/**
	 * 是否指定用户领取，填写true或false。默认为false。 
	 * 通常指定特殊用户群体投放卡券或防止刷券时选择指定用户领取。
	 * 不支持修改
	 */
	public void setBindOpenid(Boolean bindOpenid) {
		this.bindOpenid = bindOpenid;
	}

	/**
	 * 卡券领取页面是否可分享。
	 */
	public Boolean getCanShare() {
		return canShare;
	}

	/**
	 * 卡券领取页面是否可分享。
	 */
	public void setCanShare(Boolean canShare) {
		this.canShare = canShare;
	}

	/**
	 * 卡券是否可转赠。
	 */
	public Boolean getCanGiveFriend() {
		return canGiveFriend;
	}

	/**
	 * 卡券是否可转赠。
	 */
	public void setCanGiveFriend(Boolean canGiveFriend) {
		this.canGiveFriend = canGiveFriend;
	}

	/**
	 * 门店位置poiid。
	 */
	public Integer[] getLocationIdList() {
		return locationIdList;
	}

	/**
	 * 门店位置poiid。
	 * 调用POI门店管理接口获取门店位置poiid。
	 * 具备线下门店的商户为必填。
	 */
	public void setLocationIdList(Integer[] locationIdList) {
		this.locationIdList = locationIdList;
	}

	/**
	 * 卡券顶部居中的按钮
	 */
	public string getCenterTitle() {
		return centerTitle;
	}

	/**
	 * 卡券顶部居中的按钮，如“立即使用”，仅在卡券状态正常(可以核销)时显示
	 */
	public void setCenterTitle(string centerTitle) {
		this.centerTitle = centerTitle;
	}

	/**
	 * 显示在入口下方的提示语。
	 */
	public string getCenterSubTitle() {
		return centerSubTitle;
	}

	/**
	 * 显示在入口下方的提示语，如“立即享受优惠”，仅在卡券状态正常(可以核销)时显示。
	 */
	public void setCenterSubTitle(string centerSubTitle) {
		this.centerSubTitle = centerSubTitle;
	}

	/**
	 * 顶部居中的url，仅在卡券状态正常(可以核销)时显示。
	 */
	public string getCenterUrl() {
		return centerUrl;
	}

	/**
	 * 顶部居中的url，仅在卡券状态正常(可以核销)时显示。
	 */
	public void setCenterUrl(string centerUrl) {
		this.centerUrl = centerUrl;
	}

	/**
	 * 自定义跳转外链的入口名字， 如“立即使用”。
	 */
	public string getCustomUrlName() {
		return customUrlName;
	}

	/**
	 * 自定义跳转外链的入口名字， 如“立即使用”。详情见活用自定义入口
	 */
	public void setCustomUrlName(string customUrlName) {
		this.customUrlName = customUrlName;
	}

	/**
	 * 自定义跳转的URL。
	 */
	public string getCustomUrl() {
		return customUrl;
	}

	/**
	 * 自定义跳转的URL。
	 */
	public void setCustomUrl(string customUrl) {
		this.customUrl = customUrl;
	}

	/**
	 * 显示在入口右侧的提示语。如“更多惊喜”。
	 */
	public string getCustomUrlSubTitle() {
		return customUrlSubTitle;
	}

	/**
	 * 显示在入口右侧的提示语。如“更多惊喜”。
	 */
	public void setCustomUrlSubTitle(string customUrlSubTitle) {
		this.customUrlSubTitle = customUrlSubTitle;
	}

	/**
	 * 营销场景的自定义入口名称。如，“产品介绍”。
	 */
	public string getPromotionUrlName() {
		return promotionUrlName;
	}

	/**
	 * 营销场景的自定义入口名称。如，“产品介绍”。
	 */
	public void setPromotionUrlName(string promotionUrlName) {
		this.promotionUrlName = promotionUrlName;
	}

	/**
	 * 入口跳转外链的地址链接。
	 */
	public string getPromotionUrl() {
		return promotionUrl;
	}

	/**
	 * 入口跳转外链的地址链接。
	 */
	public void setPromotionUrl(string promotionUrl) {
		this.promotionUrl = promotionUrl;
	}

	/**
	 * 显示在营销入口右侧的提示语。如，“卖场大优惠。”。
	 */
	public string getPromotionUrlSubTitle() {
		return promotionUrlSubTitle;
	}

	/**
	 * 显示在营销入口右侧的提示语。如，“卖场大优惠。”。
	 */
	public void setPromotionUrlSubTitle(string promotionUrlSubTitle) {
		this.promotionUrlSubTitle = promotionUrlSubTitle;
	}

	/**
	 * 第三方来源名，例如同程旅游、大众点评。
	 */
	public string getSource() {
		return source;
	}

	/**
	 * 第三方来源名，例如同程旅游、大众点评。
	 * 不支持修改
	 */
	public void setSource(string source) {
		this.source = source;
	}

	public Boolean getUseAllLocations() {
		return useAllLocations;
	}

	public void setUseAllLocations(Boolean useAllLocations) {
		this.useAllLocations = useAllLocations;
	}

	public Integer getUseLimit() {
		return useLimit;
	}

	public void setUseLimit(Integer useLimit) {
		this.useLimit = useLimit;
	}

	public string getGetCustomCodeMode() {
		return getCustomCodeMode;
	}

	public void setGetCustomCodeMode(string getCustomCodeMode) {
		this.getCustomCodeMode = getCustomCodeMode;
	}
	
	
}
