module hunt.wechat.api.QrcodeAPI;

import java.awt.image.BufferedImage;
import hunt.io.ByteArrayInputStream;
import hunt.Exceptions;
import hunt.text.Charset;

import javax.imageio.ImageIO;

//import org.apache.http.client.methods.CloseableHttpResponse;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;
//import org.apache.http.util.EntityUtils;
import hunt.logging;


import hunt.wechat.bean.qrcode.QrcodeTicket;
import hunt.wechat.bean.qrcode.Wxaqrcode;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 二维码API
 * 
 *
 */
class QrcodeAPI : BaseAPI{


	/**
	 * 创建二维码
	 * @param access_token access_token
	 * @param qrcodeJson json 数据
	 * @return QrcodeTicket
	 */
	private static QrcodeTicket qrcodeCreate(string access_token,string qrcodeJson){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/qrcode/create")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(qrcodeJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(QrcodeTicket));
	}

	/**
	 * 创建临时二维码
	 * @param access_token access_token
	 * @param expire_seconds 最大不超过604800秒（即30天）
	 * @param scene_id		  场景值ID，32位非0整型  最多10万个
	 * @return QrcodeTicket
	 */
	public static QrcodeTicket qrcodeCreateTemp(string access_token,int expire_seconds,long scene_id){
		string json = string.format("{\"expire_seconds\": %d, \"action_name\": \"QR_SCENE\", \"action_info\": {\"scene\": {\"scene_id\": %d}}}",expire_seconds,scene_id);
		return qrcodeCreate(access_token,json);
	}

	/**
	 * 创建带参数的临时二维码
	 * 具体信息可以查看<a href="https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1443433542">微信公众号文档</a>
	 * @param access_token access_token
	 * @param expire_seconds 最大不超过604800秒（即30天）
	 * @param scene_str		 场景值ID（字符串形式的ID），字符串类型，长度限制为1到64
	 * @return QrcodeTicket
	 */
	public static QrcodeTicket qrcodeCreateTemp(string access_token,int expire_seconds,string scene_str){
		string json = string.format("{\"expire_seconds\": %d, \"action_name\": \"QR_STR_SCENE\", \"action_info\": {\"scene\": {\"scene_str\": \"%s\"}}}", expire_seconds, scene_str);
		return qrcodeCreate(access_token,json);
	}

	/**
	 * 创建持久二维码
	 * @param access_token access_token
	 * @param scene_id	场景值ID 1-100000
	 * @return QrcodeTicket
	 */
	public static QrcodeTicket qrcodeCreateFinal(string access_token,int scene_id){
		string json = string.format("{\"action_name\": \"QR_LIMIT_SCENE\", \"action_info\": {\"scene\": {\"scene_id\":%d}}}", scene_id);
		return qrcodeCreate(access_token,json);
	}

	/**
	 * 创建持久二维码
	 * @param access_token access_token
	 * @param scene_str	场景值ID（字符串形式的ID），字符串类型，长度限制为1到64
	 * @return QrcodeTicket
	 */
	public static QrcodeTicket qrcodeCreateFinal(string access_token,string scene_str){
		string json = string.format("{\"action_name\": \"QR_LIMIT_STR_SCENE\", \"action_info\": {\"scene\": {\"scene_str\": \"%s\"}}}", scene_str);
		return qrcodeCreate(access_token,json);
	}

	/**
	 * 下载二维码
	 * @param ticket  内部自动 UrlEncode
	 * @return BufferedImage
	 */
	public static BufferedImage showqrcode(string ticket){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(MP_URI + "/cgi-bin/showqrcode")
				.addParameter("ticket", ticket)
				.build();
		CloseableHttpResponse httpResponse = LocalHttpClient.execute(httpUriRequest);
		return getImage(httpResponse);
	}

	/**
	 * 获取小程序页面二维码 
	 * 小程序码使用 使用 WxaAPI.getwxacode　或　WxaAPI.getwxacodeunlimit
	 * @since 2.8.8
	 * @param access_token access_token
	 * @param wxaqrcode wxaqrcode
	 * @return BufferedImage
	 */
	public static BufferedImage wxaappCreatewxaqrcode(string access_token,Wxaqrcode wxaqrcode){
		string json = JsonUtil.toJSONString(wxaqrcode);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
								.setHeader(jsonHeader)
								.setUri(BASE_URI + "/cgi-bin/wxaapp/createwxaqrcode")
								.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
								.setEntity(new StringEntity(json,Charset.forName("utf-8")))
								.build();
		CloseableHttpResponse httpResponse = LocalHttpClient.execute(httpUriRequest);
		return getImage(httpResponse);
	}

	private static BufferedImage getImage(CloseableHttpResponse httpResponse) {
		try {
			int status = httpResponse.getStatusLine().getStatusCode();
			if (status == 200) {
				byte[] bytes = EntityUtils.toByteArray(httpResponse.getEntity());
				return ImageIO.read(new ByteArrayInputStream(bytes));
			}
		} catch (IOException e) {
			logger.error("", e);
		} finally {
			try {
				httpResponse.close();
			} catch (IOException e) {
				logger.error("", e);
			}
		}
		return null;
	}

}
