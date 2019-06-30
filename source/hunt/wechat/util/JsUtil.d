module hunt.wechat.util.JsUtil;

import hunt.collection.HashMap;
import hunt.collection.LinkedHashMap;
import hunt.collection.Map;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;

abstract class JsUtil {
	
	//2.5.3  2.8.2  2.8.24 更新
	public enum string[] ALL_JS_API_LIST = {
									//基础接口--------------------
		"checkJsApi",				//判断当前客户端版本是否支持指定JS接口                         	
									//分享接口--------------------
		"updateAppMessageShareData",//分享到朋友及QQ
		"updateTimelineShareData",	//分享到朋友圈及QQ空间
		
		"onMenuShareTimeline",		//分享到朋友圈
		"onMenuShareAppMessage",	//分享给朋友
		"onMenuShareQQ",			//分享到QQ
		"onMenuShareWeibo",			//分享到腾讯微博
		"onMenuShareQZone",			//分享到QQ空间
									//图像接口--------------------
		"chooseImage",				//拍照或从手机相册中选图
		"previewImage",				//预览图片
		"uploadImage",				//上传图片
		"downloadImage",			//下载图片
									//音频接口--------------------
		"startRecord",				//开始录音
		"stopRecord",				//停止录音
		"onVoiceRecordEnd",			//监听录音自动停止
		"playVoice",				//播放语音
		"pauseVoice",				//暂停播放
		"stopVoice",				//停止播放
		"onVoicePlayEnd",			//监听语音播放完毕
		"uploadVoice",				//上传语音
		"downloadVoice",			//下载语音
									//智能接口-------------------
		"translateVoice",			//识别音频并返回识别结果
									//设备信息-------------------
		"getNetworkType",			//获取网络状态
									//地理位置-------------------
		"openLocation",				//使用微信内置地图查看位置
		"getLocation",				//获取地理位置
									//摇一摇周边-----------------
		"startSearchBeacons",		//开启查找周边ibeacon设备
		"stopSearchBeacons",		//关闭查找周边ibeacon设备
		"onSearchBeacons",			//监听周边ibeacon设备
									//界面操作-------------------
		"hideOptionMenu",			//隐藏右上角菜单
		"showOptionMenu",			//显示右上角菜单
		"closeWindow",				//关闭当前网页窗口
		"hideMenuItems",			//批量隐藏功能按钮
		"showMenuItems",			//批量显示功能按钮
		"hideAllNonBaseMenuItem",	//隐藏所有非基础按钮
		"showAllNonBaseMenuItem",	//显示所有功能按钮
									//微信扫一扫-----------------
		"scanQRCode",				//调起微信扫一扫
									//微信小店-------------------
		"openProductSpecificView",	//跳转微信商品页
									//微信卡券-------------------
		"chooseCard",				//拉取适用卡券列表并获取用户选择信息
		"addCard",					//批量添加卡券
		"openCard",					//查看微信卡包中的卡券
									//微信支付-------------------
		"chooseWXPay",				//发起一个微信支付
		"openAddress"				//共享收货地址接口
	}; 

	/**
	 * 生成 config接口 signature
	 * @param noncestr noncestr
	 * @param jsapi_ticket jsapi_ticket
	 * @param timestamp timestamp
	 * @param url url
	 * @return sign
	 */
	public static string generateConfigSignature(string noncestr,string jsapi_ticket,string timestamp,string url){
		Map!(string, string) map = new HashMap!(string, string)();
		map.put("noncestr", noncestr);
		map.put("jsapi_ticket", jsapi_ticket);
		map.put("timestamp", timestamp);
		map.put("url", url);
		
		Map!(string, string) tmap = MapUtil.order(map);
		string str = MapUtil.mapJoin(tmap,true,false);
		return DigestUtils.shaHex(str);
	}

	/**
	 * 生成 config接口注入权限验证 JSON
	 * @param jsapi_ticket jsapi_ticket
	 * @param debug debug
	 * @param appId appId
	 * @param url url
	 * @param jsApiList 可以为空
	 *							基础接口
	 *checkJsApi				判断当前客户端版本是否支持指定JS接口                         	
	 *							分享接口
	 *updateAppMessageShareData 分享到朋友及QQ
	 *updateTimelineShareData	分享到朋友圈及QQ空间
	 *
	 *onMenuShareTimeline		分享到朋友圈
	 *onMenuShareAppMessage		分享给朋友
	 *onMenuShareQQ				分享到QQ
	 *onMenuShareWeibo			分享到腾讯微博
	 *onMenuShareQZone			分享到QQ空间
	 *							图像接口
	 *chooseImage				拍照或从手机相册中选图
	 *previewImage				预览图片
	 *uploadImage				上传图片
	 *downloadImage				下载图片
	 *							音频接口
	 *startRecord				开始录音
	 *stopRecord				停止录音
	 *onVoiceRecordEnd			监听录音自动停止
	 *playVoice					播放语音
	 *pauseVoice				暂停播放
	 *stopVoice					停止播放
	 *onVoicePlayEnd			监听语音播放完毕
	 *uploadVoice				上传语音
	 *downloadVoice				下载语音
	 *							智能接口
	 *translateVoice			识别音频并返回识别结果
	 *							设备信息
	 *getNetworkType			获取网络状态
	 *							地理位置
	 *openLocation				使用微信内置地图查看位置
	 *getLocation				获取地理位置
	 *							摇一摇周边
	 *startSearchBeacons		开启查找周边ibeacon设备
	 *stopSearchBeacons			关闭查找周边ibeacon设备
	 *onSearchBeacons			监听周边ibeacon设备
	 *							界面操作
	 *hideOptionMenu			隐藏右上角菜单
	 *showOptionMenu			显示右上角菜单
	 *closeWindow				关闭当前网页窗口
	 *hideMenuItems				批量隐藏功能按钮
	 *showMenuItems				批量显示功能按钮
	 *hideAllNonBaseMenuItem	隐藏所有非基础按钮
	 *showAllNonBaseMenuItem	显示所有功能按钮
	 *							微信扫一扫
	 *scanQRCode				调起微信扫一扫
	 *							微信小店
	 *openProductSpecificView	跳转微信商品页
	 *							微信卡券
	 *chooseCard				拉取适用卡券列表并获取用户选择信息
	 *addCard					批量添加卡券
	 *openCard					查看微信卡包中的卡券
 								微信支付
	 *chooseWXPay				发起一个微信支付
	 *openAddress				共享收货地址接口
	 *
	 * @return 配置JSON数据
	 */
	public static string generateConfigJson(string jsapi_ticket,bool _debug,string appId,string url,string[] jsApiList...){
		long timestamp = DateTimeHelper.currentTimeMillis()/1000;
		string nonceStr = UUID.randomUUID().toString();
		string signature = generateConfigSignature(nonceStr, jsapi_ticket, timestamp + "", url);
		Map!(string,Object) map = new LinkedHashMap!(string,Object)();
		map.put("debug", _debug);
		map.put("appId", appId);
		map.put("timestamp", timestamp);
		map.put("nonceStr", nonceStr);
		map.put("signature", signature);
		map.put("jsApiList", jsApiList == null ? ALL_JS_API_LIST : jsApiList);
		return JsonUtil.toJSONString(map);
	}

	/**
	 * 生成微信支付JSON
	 * @since 2.8.1
	 * @param prepay_id	预支付订单号
	 * @param appId appId
	 * @param key 商户支付密钥
	 * @return json
	 */
	public static string generateChooseWXPayJson(string prepay_id,string appId,string key){
		string json = PayUtil.generateMchPayJsRequestJson(prepay_id, appId, key);
		json = json.replaceAll("\"timeStamp\"","\"timestamp\"")
				   .replaceAll(",?\"appId\":\"[^\"]*\",?","");
		return json;
	}
	
}
