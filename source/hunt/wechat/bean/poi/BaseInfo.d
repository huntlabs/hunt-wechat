module hunt.wechat.bean.poi.BaseInfo;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 门店信息－提交对象
 * 
 * 
 *
 */
class BaseInfo {
	/**
	 * 门店ID，修改服务信息是需要指定
	 */
	@JSONField(name = "poi_id")
	private string poiId;
	/**
	 * 商户自己的id，用于后续审核通过收到poi_id 的通知时，做对应关系。请商户自己保证唯一识别性
	 * 必填：否
	 */
	private string sid;
	/**
	 * 门店名称（仅为商户名，如：国美、麦当劳，不应包含地区、地址、分店名等信息，错误示例：北京国美）
	 * 必填：是
	 */
	@JSONField(name = "business_name")
	private string businessName;
	/**
	 * 分店名称（不应包含地区信息，不应与门店名有重复，错误示例：北京王府井店）
	 * 必填：是
	 */
	@JSONField(name = "branch_name")
	private string branchName;
	/**
	 * 门店所在的省份（直辖市填城市名,如：北京市）
	 * 必填：是
	 */
	private string province;
	/**
	 * 门店所在的城市
	 * 必填：是
	 */
	private string city;
	/**
	 * 门店所在地区
	 * 必填：是
	 */
	private string district;
	/**
	 * 门店所在的详细街道地址（不要填写省市信息）
	 * 必填：是
	 */
	private string address;
	/**
	 * 门店的电话（纯数字，区号、分机号均由“-”隔开）
	 * 必填：是
	 */
	private string telephone;
	/**
	 * 门店的类型（不同级分类用“,”隔开，如：美食，川菜，火锅。详细分类参见附件：微信门店类目表）
	 * 必填：是
	 */
	private string[] categories;
	/**
	 * 坐标类型，1 为火星坐标（目前只能选1）
	 * 必填：是
	 */
	@JSONField(name = "offset_type")
	private Integer offsetType;
	/**
	 * 门店所在地理位置的经度
	 * 必填：是
	 */
	private Double longitude;
	/**
	 * 门店所在地理位置的纬度（经纬度均为火星坐标，最好选用腾讯地图标记的坐标）
	 * 必填：是
	 */
	private Double latitude;
	/**
	 * 图片列表，url
	 * 形式，可以有多张图片，尺寸为640*340px。必须为上一接口生成的url。图片内容不允许与门店不相关，不允许为二维码、员工合照（
	 * 或模特肖像）、营业执照、无门店正门的街景、地图截图、公交地铁站牌、菜单截图等
	 * 必填：否
	 */
	@JSONField(name = "photo_list")
	private Photo[] photoList;
	/**
	 * 推荐品，餐厅可为推荐菜；酒店为推荐套房；景点为推荐游玩景点等，针对自己行业的推荐内容
	 * 必填：否
	 */
	private string recommend;
	/**
	 * 特色服务，如免费wifi，免费停车，送货上门等商户能提供的特色功能或服务
	 * 必填：否
	 */
	private string special;
	/**
	 * 商户简介，主要介绍商户信息等
	 * 必填：否
	 */
	private string introduction;
	/**
	 * 营业时间，24 小时制表示，用“-”连接，如 8:00-20:00
	 * 必填：否
	 */
	@JSONField(name = "open_time")
	private string openTime;
	/**
	 * 人均价格，大于0 的整数
	 * 必填：否
	 */
	@JSONField(name = "avg_price")
	private Float avgPrice;
	public string getPoiId() {
		return poiId;
	}
	public void setPoiId(string poiId) {
		this.poiId = poiId;
	}
	public string getSid() {
		return sid;
	}
	public void setSid(string sid) {
		this.sid = sid;
	}
	public string getBusinessName() {
		return businessName;
	}
	public void setBusinessName(string businessName) {
		this.businessName = businessName;
	}
	public string getBranchName() {
		return branchName;
	}
	public void setBranchName(string branchName) {
		this.branchName = branchName;
	}
	public string getProvince() {
		return province;
	}
	public void setProvince(string province) {
		this.province = province;
	}
	public string getCity() {
		return city;
	}
	public void setCity(string city) {
		this.city = city;
	}
	public string getDistrict() {
		return district;
	}
	public void setDistrict(string district) {
		this.district = district;
	}
	public string getAddress() {
		return address;
	}
	public void setAddress(string address) {
		this.address = address;
	}
	public string getTelephone() {
		return telephone;
	}
	public void setTelephone(string telephone) {
		this.telephone = telephone;
	}
	public string[] getCategories() {
		return categories;
	}
	public void setCategories(string[] categories) {
		this.categories = categories;
	}
	public Integer getOffsetType() {
		return offsetType;
	}
	public void setOffsetType(Integer offsetType) {
		this.offsetType = offsetType;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Photo[] getPhotoList() {
		return photoList;
	}
	public void setPhotoList(Photo[] photoList) {
		this.photoList = photoList;
	}
	public string getRecommend() {
		return recommend;
	}
	public void setRecommend(string recommend) {
		this.recommend = recommend;
	}
	public string getSpecial() {
		return special;
	}
	public void setSpecial(string special) {
		this.special = special;
	}
	public string getIntroduction() {
		return introduction;
	}
	public void setIntroduction(string introduction) {
		this.introduction = introduction;
	}
	public string getOpenTime() {
		return openTime;
	}
	public void setOpenTime(string openTime) {
		this.openTime = openTime;
	}
	public Float getAvgPrice() {
		return avgPrice;
	}
	public void setAvgPrice(Float avgPrice) {
		this.avgPrice = avgPrice;
	}

}
