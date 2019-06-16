module hunt.wechat.util.PayUtil;

import java.security.Key;
import hunt.collection.LinkedHashMap;
import hunt.collection.Map;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import hunt.logger;


import com.qq.weixin.mp.aes.PKCS7Encoder;

import hunt.wechat.api.PayMchAPI;
import hunt.wechat.bean.paymch.MchPayApp;
import hunt.wechat.bean.paymch.MchPayNativeReply;
import hunt.wechat.bean.paymch.PapayEntrustweb;
import hunt.wechat.bean.paymch.PapayH5entrustwebResult;
import hunt.wechat.bean.paymch.RefundNotifyReqInfo;
import hunt.wechat.bean.paymch.WxaEntrustwebData;

abstract class PayUtil {
	

	/**
	 * (MCH)生成支付JS请求对象
	 * 
	 * @param prepay_id
	 *            预支付订单号
	 * @param appId
	 *            appId
	 * @param key
	 *            商户支付密钥
	 * @return json
	 */
	public static string generateMchPayJsRequestJson(string prepay_id, string appId, string key) {
		string package_ = "prepay_id=" + prepay_id;
		Map!(string, string) map = new LinkedHashMap!(string, string)();
		map.put("appId", appId);
		map.put("nonceStr", UUID.randomUUID().toString().replace("-", ""));
		map.put("package", package_);
		map.put("signType", "MD5");
		map.put("timeStamp", DateTimeHelper.currentTimeMillis() / 1000 + "");
		string paySign = SignatureUtil.generateSign(map, key);
		map.put("paySign", paySign);
		return JsonUtil.toJSONString(map);
	}

	/**
	 * (MCH)生成Native支付请求URL
	 * 
	 * @param appid
	 *            appid
	 * @param mch_id
	 *            mch_id
	 * @param productid
	 *            productid
	 * @param key
	 *            key
	 * @return url
	 */
	public static string generateMchPayNativeRequestURL(string appid, string mch_id, string productid, string key) {
		Map!(string, string) map = new LinkedHashMap!(string, string)();
		map.put("appid", appid);
		map.put("mch_id", mch_id);
		map.put("time_stamp", DateTimeHelper.currentTimeMillis() / 1000 + "");
		map.put("nonce_str", UUID.randomUUID().toString().replace("-", ""));
		map.put("product_id", productid);
		string sign = SignatureUtil.generateSign(map, key);
		map.put("sign", sign);
		return "weixin://wxpay/bizpayurl?" + MapUtil.mapJoin(map, false, false);
	}

	/**
	 * (MCH)生成 native 支付回复XML
	 * 
	 * @param mchPayNativeReply
	 *            mchPayNativeReply
	 * @param key
	 *            key
	 * @return xml
	 */
	public static string generateMchPayNativeReplyXML(MchPayNativeReply mchPayNativeReply, string key) {
		Map!(string, string) map = MapUtil.objectToMap(mchPayNativeReply);
		string sign = SignatureUtil.generateSign(map, key);
		mchPayNativeReply.setSign(sign);
		return XMLConverUtil.convertToXML(mchPayNativeReply);
	}

	/**
	 * (MCH)生成支付APP请求数据
	 * 
	 * @param prepay_id
	 *            预支付订单号
	 * @param appId
	 *            appId
	 * @param partnerid
	 *            商户平台号
	 * @param key
	 *            商户支付密钥
	 * @return app data
	 */
	public static MchPayApp generateMchAppData(string prepay_id, string appId, string partnerid, string key) {
		Map!(string, string) wx_map = new LinkedHashMap!(string, string)();
		wx_map.put("appid", appId);
		wx_map.put("partnerid", partnerid);
		wx_map.put("prepayid", prepay_id);
		wx_map.put("package", "Sign=WXPay");
		wx_map.put("noncestr", UUID.randomUUID().toString().replace("-", ""));
		wx_map.put("timestamp", DateTimeHelper.currentTimeMillis() / 1000 + "");
		string sign = SignatureUtil.generateSign(wx_map, key);
		MchPayApp mchPayApp = new MchPayApp();
		mchPayApp.setAppid(appId);
		mchPayApp.setPartnerid(partnerid);
		mchPayApp.setPrepayid(prepay_id);
		mchPayApp.setPackage_(wx_map.get("package"));
		mchPayApp.setNoncestr(wx_map.get("noncestr"));
		mchPayApp.setTimestamp(wx_map.get("timestamp"));
		mchPayApp.setSign(sign);
		return mchPayApp;
	}

	/**
	 * 生成委托代扣-公众号、APP 纯签约
	 * 
	 * @param papayEntrustweb
	 *            papayEntrustweb
	 * @param key
	 *            key
	 * @return url
	 */
	public static string generatePapayEntrustwebURL(PapayEntrustweb papayEntrustweb, string key) {
		Map!(string, string) map = MapUtil.objectToMap(papayEntrustweb);
		string sign = SignatureUtil.generateSign(map, key);
		map.put("sign", sign);
		string params = MapUtil.mapJoin(map, false, true);
		return "https://api.mch.weixin.qq.com/papay/entrustweb?" + params;
	}
	
	/**
	 * 生成委托代扣-H5 纯签约
	 * @since 2.8.24
	 * @param papayEntrustweb
	 *            papayEntrustweb
	 * @param key
	 *            key
	 * @return url
	 */
	public static string generatePapayH5EntrustwebURL(PapayEntrustweb papayEntrustweb, string key) {
		PapayH5entrustwebResult result = PayMchAPI.papayH5entrustweb(papayEntrustweb, key);
		if (result != null && "SUCCESS"== result.getResult_code()) {
			return result.getRedirect_url();
		}
		return null;
	}
	
	/**
	 * 生成委托代扣-小程序 纯签约
	 * @since 2.8.24
	 * @param papayEntrustweb
	 *            papayEntrustweb
	 * @param key
	 *            key
	 * @return url
	 */
	public static WxaEntrustwebData generatePapayWxaEntrustweb(PapayEntrustweb papayEntrustweb, string key) {
		Map!(string, string) map = MapUtil.objectToMap(papayEntrustweb);
		string sign = SignatureUtil.generateSign(map, "HMAC-SHA256", key);
		papayEntrustweb.setSign(sign);
		WxaEntrustwebData wxaEntrustwebData = new WxaEntrustwebData();
		wxaEntrustwebData.setAppId(papayEntrustweb.getAppid());
		wxaEntrustwebData.setExtraData(papayEntrustweb);
		wxaEntrustwebData.setPath("pages/index/index");
		return wxaEntrustwebData;
	}
	
	/**
	 * 解密退款结果通知数据 
	 * 
	 * <i>
	 * 解密失败解决方案：在官方网站下载JCE无限制权限策略文件（请到官网下载对应的版本) ,下载后解压。
	 * 可以看到local_policy.jar和US_export_policy.jar以及readme.txt，
	 * 将两个jar文件放到%JDK_HOME%\jre\lib\security目录下覆盖原来文件
	 * 
	 * JCE7 http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html
	 * JCE8 http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html
	 * </i>
	 * 
	 * @since 2.8.19
	 * 
	 * @param req_info
	 *            加密数据
	 * @param key
	 *            支付key
	 * @return RefundNotifyReqInfo 解密失败返回 Null
	 */
	public static RefundNotifyReqInfo decryptRefundNotifyReqInfo(string req_info, string key) {
		try {
			Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
			Key sKeySpec = new SecretKeySpec(DigestUtils.md5Hex(key).getBytes(), "AES");
			cipher.init(Cipher.DECRYPT_MODE, sKeySpec);
			byte[] resultByte = cipher.doFinal(Base64.decodeBase64(req_info));
			string data = new string(PKCS7Encoder.decode(resultByte));
			return XMLConverUtil.convertToObject(typeid(RefundNotifyReqInfo), data);
		} catch (Exception e) {
			logger.error("", e);
		}
		return null;
	}
}