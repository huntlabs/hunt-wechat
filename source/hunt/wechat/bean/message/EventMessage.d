module hunt.wechat.bean.message.EventMessage;

import hunt.collection.LinkedHashMap;
import hunt.collection.List;
import hunt.collection.Map;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAnyElement;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlRootElement;

import org.w3c.dom.Node;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class EventMessage {

	//base
	@XmlElement(name="ToUserName")
	private string toUserName; 		//开发者微信号
	
	@XmlElement(name="FromUserName")
	private string fromUserName;	//发送方帐号（一个OpenID）
	
	@XmlElement(name="CreateTime")
	private Integer createTime;		//消息创建时间 （整型）
	
	@XmlElement(name="MsgType")
	private string msgType;			//消息类型，event
	
	@XmlElement(name="Event")
	private string event;			//事件类型，subscribe(订阅)、unsubscribe(取消订阅)

	//----扫描带参数二维码事件,自定义菜单key
	@XmlElement(name="EventKey")
	private string eventKey;		//事件KEY值，qrscene_为前缀，后面为二维码的参数值
	
	
	
	//接收普通消息------------------------------------ START
	@XmlElements({@XmlElement(name="MsgId"),@XmlElement(name="MsgID")})
	private string msgId;			//消息ID号
	//文本
	@XmlElement(name="Content")
	private string content;			//文本消息内容
	//图片
	@XmlElement(name="PicUrl")
	private string picUrl;			//图片消息
	//媒体
	@XmlElement(name="MediaId")
	private string mediaId;			//mediaId 可以调用多媒体文件下载接口拉取数据
	//语音格式
	@XmlElement(name="Format")
	private string format;			//语音格式
	//语音识别
	@XmlElement(name="Recognition")
	private string recognition;		//开通语音识别功能的识别结果
	//视频
	@XmlElement(name="ThumbMediaId")
	private string thumbMediaId;	//视频消息缩略图的媒体id，可以调用多媒体文件下载接口拉取数据。
	
	//地理位置-地理位置维度
	@XmlElement(name="Location_X")
	private string location_X;
	
	//地理位置-地理位置经度
	@XmlElement(name="Location_Y")
	private string location_Y;
	
	//地理位置-地图缩放大小
	@XmlElement(name="Scale")
	private string scale;
	
	//地理位置-地理位置信息
	@XmlElement(name="Label")
	private string label;
	
	//链接
	@XmlElement(name="Title")
	private string title;
	@XmlElement(name="Description")
	private string description;
	@XmlElement(name="Url")
	private string url;
	//接收普通消息------------------------------------ END
	
	
	
	
	
	
	
	//接收事件推送------------------------------------ START
	
	//关注/取消关注事件
	
	//二维码的ticket，可用来换取二维码图片
	@XmlElement(name="Ticket")
	private string ticket;			
	
	//----上报地理位置事件
	@XmlElement(name="Latitude")
	private string latitude;		//地理位置纬度
	
	@XmlElement(name="Longitude")
	private string longitude;		//地理位置经度
	
	@XmlElement(name="Precision")
	private string precision;		//地理位置精度
	//接收事件推送------------------------------------ END

	
	
	//群发消息通知------------------------------------ START
	//Event	 事件信息，此处为MASSSENDJOBFINISH
	@XmlElement(name="Status")
	private string status;/**群发的结构，为“send success”或“send fail”或“err(num)”。
							但send success时，也有可能因用户拒收公众号的消息、系统错误等原因造成少量用户接收失败。err(num)是审核失败的具体原因，可能的情况如下：
							err(10001), 涉嫌广告
							err(20001), 涉嫌政治
							err(20004), 涉嫌社会
							err(20002), 涉嫌色情
							err(20006), 涉嫌违法犯罪
							err(20008), 涉嫌欺诈
							err(20013), 涉嫌版权
							err(22000), 涉嫌互推(互相宣传)
							err(21000), 涉嫌其他*/

	@XmlElement(name="TotalCount")
	private Integer totalCount;	//group_id下粉丝数；或者openid_list中的粉丝数

	@XmlElement(name="FilterCount")
	private Integer filterCount;//过滤（过滤是指特定地区、性别的过滤、用户设置拒收的过滤，用户接收已超4条的过滤）后，准备发送的粉丝数，原则上，FilterCount = SentCount + ErrorCount
	
	@XmlElement(name="SentCount")
	private Integer sentCount;//发送成功的粉丝数

	@XmlElement(name="ErrorCount")
	private Integer errorCount;//发送失败的粉丝数
	
	@XmlElement(name="CopyrightCheckResult")
	private CopyrightCheckResult copyrightCheckResult;	//群发消息通知结果
	
	//群发消息通知------------------------------------ END
	
	
	
	
	
	
	//微信认证事件推送-------------------------------- START
	
	@XmlElement(name="ExpiredTime")
	private Integer expiredTime;   //有效期 (整形)，指的是时间戳
	
	@XmlElement(name="FailTime")
	private Integer failTime;   //失败发生时间 (整形)，时间戳
	
	@XmlElement(name="FailReason")
	private string failReason;   //认证失败的原因
	
	//微信认证事件推送-------------------------------- END
	
	
	
	
	//微信门店审核事件推送-------------------------------- START
	
	@XmlElement(name="UniqId")
	private string uniqId;   //商户自己内部ID，即字段中的sid
	
	@XmlElement(name="PoiId")
	private string poiId;   //微信的门店ID，微信内门店唯一标示ID
	
	@XmlElement(name="Result")
	private string result;   //审核结果，成功succ 或失败fail
	
	@XmlElement(name="Msg")
	private string msg;   //成功的通知信息，或审核失败的驳回理由	
	
	//微信门店审核事件推送-------------------------------- END
	
	
	
	//摇一摇周边事件通知-------------------------------- START
	@XmlElement(name="ChosenBeacon")
	private ChosenBeacon chosenBeacon;   //审核结果，成功succ 或失败fail
	
	@XmlElement(name="AroundBeacons")
	private List<AroundBeacon> aroundBeacons;   //审核结果，成功succ 或失败fail
	
	//摇一摇 周边事件通知-------------------------------- END
	
	
	//摇一摇 红包绑定用户事件通知-------------------------------- START
	@XmlElement(name="LotteryId")
	private string lotteryId;
	
	@XmlElement(name="Money")
	private Integer money;
	
	@XmlElement(name="BindTime")
	private Integer bindTime;
	
	//摇一摇 红包绑定用户事件通知-------------------------------- END
	
	
	//WIFI连网后下发消息-------------------------------- START
	@XmlElement(name="ConnectTime")
	private Integer connectTime;		//连网时间
	
	@XmlElement(name="ExpireTime")
	private Integer expireTime;			//系统保留字段，固定值
	
	@XmlElement(name="VendorId")
	private string vendorId;			//系统保留字段，固定值
	
	@XmlElement(name="ShopId")
	private string shopId;				//门店ID，即shop_id
	
	@XmlElement(name="DeviceNo")
	private string deviceNo;			//连网的设备无线mac地址，对应bssid
	
	//WIFI连网后下发消息-------------------------------- END

	
	//扫一扫事件推送-------------------------------- START
	@XmlElement(name="KeyStandard")
	private string keyStandard;		//商品编码标准
	
	@XmlElement(name="KeyStr")
	private string keyStr;			//商品编码内容
	
	@XmlElement(name="Country")
	private string country;			//用户在微信内设置的国家
	
	@XmlElement(name="Province")
	private string province;		//用户在微信内设置的省份
	
	@XmlElement(name="City")
	private string city;			//用户在微信内设置的城市
	
	@XmlElement(name="Sex")
	private Integer sex;			//用户的性别，1为男性，2为女性，0代表未知
	
	@XmlElement(name="Scene")
	private Integer scene;			//打开商品主页的场景，1为扫码，2为其他打开场景（如会话、收藏或朋友圈）
	
	@XmlElement(name="RegionCode")
	private string regionCode;		//用户的实时地理位置信息（目前只精确到省一级），可在国家统计局网站查到对应明细：http://www.stats.gov.cn/tjsj/tjbz/xzqhdm/201504/t20150415_712722.html
	
	@XmlElement(name="ReasonMsg")
	private Integer reasonMsg;		//审核未通过的原因。
	
	//扫一扫事件推送-------------------------------- END
	
	
	/**
	 * 其它未定义XML字段 
	 * @since 2.8.13
	 */
	@XmlAnyElement
	private List<org.w3c.dom.Element> otherElements;	//com.sun.org.apache.xerces.internal.dom.ElementNSImpl

	public List<org.w3c.dom.Element> getOtherElements() {
		return otherElements;
	}

	public void setOtherElements(List<org.w3c.dom.Element> otherElements) {
		this.otherElements = otherElements;
	}
	
	/**
	 * 转换 未定义XML 字段为 Map
	 * @since 2.8.13
	 * @return MAP
	 */
	public Map<string, string> otherElementsToMap() {
		Map<string, string> map = new LinkedHashMap<string, string>();
		if (otherElements != null) {
			for (org.w3c.dom.Element e : otherElements) {
				if (e.hasChildNodes()) {
					if (e.getChildNodes().getLength() == 1
							&& e.getChildNodes().item(0).getNodeType() == Node.TEXT_NODE) {
						map.put(e.getTagName(), e.getTextContent());
					}
				}
			}
		}
		return map;
	}

	public string getToUserName() {
		return toUserName;
	}

	public void setToUserName(string toUserName) {
		this.toUserName = toUserName;
	}

	public string getFromUserName() {
		return fromUserName;
	}

	public void setFromUserName(string fromUserName) {
		this.fromUserName = fromUserName;
	}

	public Integer getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Integer createTime) {
		this.createTime = createTime;
	}

	public string getMsgType() {
		return msgType;
	}

	public void setMsgType(string msgType) {
		this.msgType = msgType;
	}

	public string getEvent() {
		return event;
	}

	public void setEvent(string event) {
		this.event = event;
	}

	public string getEventKey() {
		return eventKey;
	}

	public void setEventKey(string eventKey) {
		this.eventKey = eventKey;
	}

	public string getMsgId() {
		return msgId;
	}

	public void setMsgId(string msgId) {
		this.msgId = msgId;
	}

	public string getContent() {
		return content;
	}

	public void setContent(string content) {
		this.content = content;
	}

	public string getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(string picUrl) {
		this.picUrl = picUrl;
	}

	public string getMediaId() {
		return mediaId;
	}

	public void setMediaId(string mediaId) {
		this.mediaId = mediaId;
	}

	public string getFormat() {
		return format;
	}

	public void setFormat(string format) {
		this.format = format;
	}

	public string getRecognition() {
		return recognition;
	}

	public void setRecognition(string recognition) {
		this.recognition = recognition;
	}

	public string getThumbMediaId() {
		return thumbMediaId;
	}

	public void setThumbMediaId(string thumbMediaId) {
		this.thumbMediaId = thumbMediaId;
	}

	public string getLocation_X() {
		return location_X;
	}

	public void setLocation_X(string location_X) {
		this.location_X = location_X;
	}

	public string getLocation_Y() {
		return location_Y;
	}

	public void setLocation_Y(string location_Y) {
		this.location_Y = location_Y;
	}

	public string getScale() {
		return scale;
	}

	public void setScale(string scale) {
		this.scale = scale;
	}

	public string getLabel() {
		return label;
	}

	public void setLabel(string label) {
		this.label = label;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public string getDescription() {
		return description;
	}

	public void setDescription(string description) {
		this.description = description;
	}

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}

	public string getTicket() {
		return ticket;
	}

	public void setTicket(string ticket) {
		this.ticket = ticket;
	}

	public string getLatitude() {
		return latitude;
	}

	public void setLatitude(string latitude) {
		this.latitude = latitude;
	}

	public string getLongitude() {
		return longitude;
	}

	public void setLongitude(string longitude) {
		this.longitude = longitude;
	}

	public string getPrecision() {
		return precision;
	}

	public void setPrecision(string precision) {
		this.precision = precision;
	}

	public string getStatus() {
		return status;
	}

	public void setStatus(string status) {
		this.status = status;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getFilterCount() {
		return filterCount;
	}

	public void setFilterCount(Integer filterCount) {
		this.filterCount = filterCount;
	}

	public Integer getSentCount() {
		return sentCount;
	}

	public void setSentCount(Integer sentCount) {
		this.sentCount = sentCount;
	}

	public Integer getErrorCount() {
		return errorCount;
	}

	public void setErrorCount(Integer errorCount) {
		this.errorCount = errorCount;
	}

	public Integer getExpiredTime() {
		return expiredTime;
	}

	public void setExpiredTime(Integer expiredTime) {
		this.expiredTime = expiredTime;
	}

	public Integer getFailTime() {
		return failTime;
	}

	public void setFailTime(Integer failTime) {
		this.failTime = failTime;
	}

	public string getFailReason() {
		return failReason;
	}

	public void setFailReason(string failReason) {
		this.failReason = failReason;
	}

	public string getUniqId() {
		return uniqId;
	}

	public void setUniqId(string uniqId) {
		this.uniqId = uniqId;
	}

	public string getPoiId() {
		return poiId;
	}

	public void setPoiId(string poiId) {
		this.poiId = poiId;
	}

	public string getResult() {
		return result;
	}

	public void setResult(string result) {
		this.result = result;
	}

	public string getMsg() {
		return msg;
	}

	public void setMsg(string msg) {
		this.msg = msg;
	}

	public ChosenBeacon getChosenBeacon() {
		return chosenBeacon;
	}

	public void setChosenBeacon(ChosenBeacon chosenBeacon) {
		this.chosenBeacon = chosenBeacon;
	}

	public List<AroundBeacon> getAroundBeacons() {
		return aroundBeacons;
	}

	public void setAroundBeacons(List<AroundBeacon> aroundBeacons) {
		this.aroundBeacons = aroundBeacons;
	}

	public string getLotteryId() {
		return lotteryId;
	}

	public void setLotteryId(string lotteryId) {
		this.lotteryId = lotteryId;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public Integer getBindTime() {
		return bindTime;
	}

	public void setBindTime(Integer bindTime) {
		this.bindTime = bindTime;
	}

	public Integer getConnectTime() {
		return connectTime;
	}

	public void setConnectTime(Integer connectTime) {
		this.connectTime = connectTime;
	}

	public Integer getExpireTime() {
		return expireTime;
	}

	public void setExpireTime(Integer expireTime) {
		this.expireTime = expireTime;
	}

	public string getVendorId() {
		return vendorId;
	}

	public void setVendorId(string vendorId) {
		this.vendorId = vendorId;
	}

	public string getShopId() {
		return shopId;
	}

	public void setShopId(string shopId) {
		this.shopId = shopId;
	}

	public string getDeviceNo() {
		return deviceNo;
	}

	public void setDeviceNo(string deviceNo) {
		this.deviceNo = deviceNo;
	}

	public string getKeyStandard() {
		return keyStandard;
	}

	public void setKeyStandard(string keyStandard) {
		this.keyStandard = keyStandard;
	}

	public string getKeyStr() {
		return keyStr;
	}

	public void setKeyStr(string keyStr) {
		this.keyStr = keyStr;
	}

	public string getCountry() {
		return country;
	}

	public void setCountry(string country) {
		this.country = country;
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

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getScene() {
		return scene;
	}

	public void setScene(Integer scene) {
		this.scene = scene;
	}

	public string getRegionCode() {
		return regionCode;
	}

	public void setRegionCode(string regionCode) {
		this.regionCode = regionCode;
	}

	public Integer getReasonMsg() {
		return reasonMsg;
	}

	public void setReasonMsg(Integer reasonMsg) {
		this.reasonMsg = reasonMsg;
	}
	
	public CopyrightCheckResult getCopyrightCheckResult() {
		return copyrightCheckResult;
	}

	public void setCopyrightCheckResult(CopyrightCheckResult copyrightCheckResult) {
		this.copyrightCheckResult = copyrightCheckResult;
	}
	
}
