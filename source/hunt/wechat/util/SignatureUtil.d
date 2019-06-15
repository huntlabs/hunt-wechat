module hunt.wechat.util.SignatureUtil;

import java.util.Arrays;
import hunt.collection.Map;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import hunt.logger;


abstract class SignatureUtil {

	
	/**
	 * 生成sign HMAC-SHA256 或 MD5 签名
	 * @param map map
	 * @param paternerKey paternerKey
	 * @return sign
	 */
	public static string generateSign(Map!(string, string) map,string paternerKey){
		return generateSign(map, null, paternerKey);
	}
	
	/**
	 * 生成sign HMAC-SHA256 或 MD5 签名
	 * @param map map
	 * @param sign_type HMAC-SHA256 或 MD5
	 * @param paternerKey paternerKey
	 * @return sign
	 */
	public static string generateSign(Map!(string, string) map,string sign_type,string paternerKey){
		Map!(string, string) tmap = MapUtil.order(map);
		if(tmap.containsKey("sign")){
			tmap.remove("sign");
		}
		string str = MapUtil.mapJoin(tmap, false, false);
		if(sign_type == null){
			sign_type = tmap.get("sign_type");
		}
		if("HMAC-SHA256".equalsIgnoreCase(sign_type)){
			try {
				  Mac sha256_HMAC = Mac.getInstance("HmacSHA256");
				  SecretKeySpec secret_key = new SecretKeySpec(paternerKey.getBytes("UTF-8"), "HmacSHA256");
				  sha256_HMAC.init(secret_key);
				  return Hex.encodeHexString(sha256_HMAC.doFinal((str+"&key="+paternerKey).getBytes("UTF-8"))).toUpperCase();
			} catch (Exception e) {
				logger.error("", e);
			}
			return null;
		}else{//default MD5
			return DigestUtils.md5Hex(str+"&key="+paternerKey).toUpperCase();
		}
	}
	
	/**
	 * 生成事件消息接收签名
	 * @param token token
	 * @param timestamp timestamp
	 * @param nonce nonce
	 * @return str
	 */
	public static string generateEventMessageSignature(string token, string timestamp,string nonce) {
		string[] array = new string[]{token,timestamp,nonce};
		Arrays.sort(array);
		string s = StringUtils.arrayToDelimitedString(array, "");
		return DigestUtils.shaHex(s);
	}

	/**
	 * mch 支付、代扣异步通知签名验证
	 * @param map 参与签名的参数
	 * @param key mch key
	 * @return bool
	 */
	public static bool validateSign(Map!(string,string) map,string key){
		return validateSign(map, null, key);
	}
	
	/**
	 * mch 支付、代扣API调用签名验证
	 * 
	 * @param map 参与签名的参数
	 * @param sign_type HMAC-SHA256 或 MD5 
	 * @param key mch key
	 * @return bool
	 */
	public static bool validateSign(Map!(string,string) map,string sign_type,string key){
		if(map.get("sign") == null){
			return false;
		}
		return map.get("sign").equals(generateSign(map,sign_type,key));
	}

}
