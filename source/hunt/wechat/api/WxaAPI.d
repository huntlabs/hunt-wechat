module hunt.wechat.api.WxaAPI;

import java.awt.image.BufferedImage;
import hunt.io.ByteArrayInputStream;
import java.io.File;
import hunt.Exceptions;
import hunt.io.Common;
import hunt.text.Charset;

import javax.imageio.ImageIO;

//import org.apache.http.Header;
//import org.apache.http.HttpEntity;
//import org.apache.http.client.methods.CloseableHttpResponse;
//import org.apache.http.client.methods.HttpPost;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.ContentType;
//import org.apache.http.entity.StringEntity;
//import org.apache.http.entity.mime.MultipartEntityBuilder;
//import org.apache.http.entity.mime.content.FileBody;
//import org.apache.http.util.EntityUtils;
import hunt.logging;


import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.wxa.Addnearbypoi;
import hunt.wechat.bean.wxa.AddnearbypoiResult;
import hunt.wechat.bean.wxa.Commit;
import hunt.wechat.bean.wxa.GetAuditstatusResult;
import hunt.wechat.bean.wxa.GetCategoryResult;
import hunt.wechat.bean.wxa.GetPageResult;
import hunt.wechat.bean.wxa.GetQrcodeResult;
import hunt.wechat.bean.wxa.GetnearbypoilistResult;
import hunt.wechat.bean.wxa.GettemplatedraftlistResult;
import hunt.wechat.bean.wxa.GettemplatelistResult;
import hunt.wechat.bean.wxa.Getwxacode;
import hunt.wechat.bean.wxa.Getwxacodeunlimit;
import hunt.wechat.bean.wxa.GetwxasearchstatusResult;
import hunt.wechat.bean.wxa.ModifyDomain;
import hunt.wechat.bean.wxa.ModifyDomainResult;
import hunt.wechat.bean.wxa.SubmitAudit;
import hunt.wechat.bean.wxa.SubmitAuditResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;
import hunt.wechat.util.StreamUtils;

/**
 * 微信小程序接口
 * 
 * @since 2.8.9
 */
class WxaAPI : BaseAPI {
	

	/**
	 * 修改服务器地址
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param modifyDomain modifyDomain
	 * @return result
	 */
	public static ModifyDomainResult modify_domain(string access_token,ModifyDomain modifyDomain){
		string json = JsonUtil.toJSONString(modifyDomain);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/modify_domain")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(ModifyDomainResult));
	}
	
	/**
	 * 成员管理 
	 * 绑定微信用户为小程序体验者
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param wechatid 微信号
	 * @return result
	 */
	public static BaseResult bind_tester(string access_token,string wechatid){
		string json = string.format("{\"wechatid\":\"%s\"}",wechatid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/bind_tester")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 成员管理 
	 * 解除绑定小程序的体验者
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param wechatid 微信号
	 * @return result
	 */
	public static BaseResult unbind_tester(string access_token,string wechatid){
		string json = string.format("{\"wechatid\":\"%s\"}",wechatid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/unbind_tester")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 代码管理
	 * 为授权的小程序帐号上传小程序代码
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param commit commit
	 * @return result
	 */
	public static BaseResult commit(string access_token,Commit commit){
		string json = JsonUtil.toJSONString(commit);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/commit")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	
	/**
	 * 代码管理
	 * 获取体验小程序的体验二维码
	 * @since 2.8.9
	 * @param access_token access_token
	 * @return result
	 */
	public static GetQrcodeResult get_qrcode(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
								.setUri(BASE_URI + "/wxa/get_qrcode")
								.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
								.build();
		CloseableHttpResponse httpResponse = LocalHttpClient.execute(httpUriRequest);
		try {
			int status = httpResponse.getStatusLine().getStatusCode();
			Header header = httpResponse.getFirstHeader("Content-disposition");
			if(header != null && header.getValue().endsWith("filename=\"QRCode.jpg\"")){
				if(status == 200){
					byte[] bytes = EntityUtils.toByteArray(httpResponse.getEntity());
					GetQrcodeResult result = new GetQrcodeResult();
					result.setBufferedImage(ImageIO.read(new ByteArrayInputStream(bytes)));
					return result;
				}
			}else{
				string body = EntityUtils.toString(httpResponse.getEntity());
				return JsonUtil.parseObject(body, typeid(GetQrcodeResult));
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
	
	/**
	 * 代码管理
	 * 获取授权小程序帐号的可选类目
	 * @since 2.8.9
	 * @param access_token access_token
	 * @return result
	 */
	public static GetCategoryResult get_category(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI + "/wxa/get_category")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetCategoryResult));
	}
	
	/**
	 * 代码管理
	 * 获取小程序的第三方提交代码的页面配置（仅供第三方开发者代小程序调用）
	 * @since 2.8.9
	 * @param access_token access_token
	 * @return result
	 */
	public static GetPageResult get_page(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI + "/wxa/get_page")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetPageResult));
	}
	
	/**
	 * 代码管理
	 * 将第三方提交的代码包提交审核（仅供第三方开发者代小程序调用）
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param submitAudit submitAudit
	 * @return result
	 */
	public static SubmitAuditResult submit_audit(string access_token,SubmitAudit submitAudit){
		string json = JsonUtil.toJSONString(submitAudit);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/submit_audit")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(SubmitAuditResult));
	}
	
	/**
	 * 代码管理
	 * 获取第三方提交的审核版本的审核状态（仅供第三方代小程序调用）
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param auditid 审核ID
	 * @return result
	 */
	public static GetAuditstatusResult get_auditstatus(string access_token,string auditid){
		string json = string.format("{\"auditid\":\"%s\"}",auditid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/get_auditstatus")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetAuditstatusResult));
	}
	
	/**
	 * 代码管理
	 * 发布已通过审核的小程序（仅供第三方代小程序调用）
	 * @since 2.8.9
	 * @param access_token access_token
	 * @return result
	 */
	public static BaseResult release(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/release")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity("{}",Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 代码管理
	 * 修改小程序线上代码的可见状态（仅供第三方代小程序调用）
	 * @since 2.8.9
	 * @param access_token access_token
	 * @param action 设置可访问状态，发布后默认可访问，close为不可见，open为可见
	 * @return result
	 */
	public static BaseResult change_visitstatus(string access_token,string action){
		string json = string.format("{\"action\":\"%s\"}",action);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/change_visitstatus")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 获取小程序码 A
	 * 适用于需要的码数量较少的业务场景 
	 * 注意：通过该接口生成的小程序码，永久有效，数量限制见文末说明，请谨慎使用。用户扫描该码进入小程序后，将直接进入 path 对应的页面。
	 * @since 2.8.10
	 * @param access_token access_token
	 * @param getwxacode getwxacode
	 * @return BufferedImage BufferedImage
	 */
	public static BufferedImage getwxacode(string access_token,Getwxacode getwxacode){
		string json = JsonUtil.toJSONString(getwxacode);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/getwxacode")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		CloseableHttpResponse httpResponse = LocalHttpClient.execute(httpUriRequest);
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
	
	/**
	 * 获取小程序码 B
	 * 适用于需要的码数量极多，或仅临时使用的业务场景
	 * 注意：通过该接口生成的小程序码，永久有效，数量暂无限制。用户扫描该码进入小程序后，将统一打开首页，开发者需在首页根据获取的码中 scene 字段的值，再做处理逻辑。
	 * @since 2.8.10
	 * @param access_token access_token
	 * @param getwxacodeunlimit getwxacodeunlimit
	 * @return BufferedImage BufferedImage
	 */
	public static BufferedImage getwxacodeunlimit(string access_token,Getwxacodeunlimit getwxacodeunlimit){
		string json = JsonUtil.toJSONString(getwxacodeunlimit);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/getwxacodeunlimit")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		CloseableHttpResponse httpResponse = LocalHttpClient.execute(httpUriRequest);
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
	
	/**
	 * 附近 添加地点
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param addnearbypoi addnearbypoi
	 * @return result
	 */
	public static AddnearbypoiResult addnearbypoi(string access_token, Addnearbypoi addnearbypoi){
		string json = JsonUtil.toJSONString(addnearbypoi);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/addnearbypoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(AddnearbypoiResult));
	}
	
	/**
	 * 附近 查看地点列表
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param page 起始页id（从1开始计数）
	 * @param page_rows 每页展示个数（最多1000个）
	 * @return result
	 */
	public static GetnearbypoilistResult getnearbypoilist(string access_token, int page, int page_rows){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/getnearbypoilist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.addParameter("page", string.valueOf(page))
				.addParameter("page_rows", string.valueOf(page_rows))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetnearbypoilistResult));
	}
	
	/**
	 * 附近 删除地点
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param poi_id 附近地点ID
	 * @return result
	 */
	public static BaseResult delnearbypoi(string access_token, string poi_id){
		string json = string.format("{\"poi_id\":\"%s\"}", poi_id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/delnearbypoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 附近 展示/取消展示附近小程序
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param poi_id 附近地点ID
	 * @param status 0：取消展示；1：展示
	 * @return result
	 */
	public static BaseResult setnearbypoishowstatus(string access_token, string poi_id, int status){
		string json = string.format("{\"poi_id\":\"%s\",\"status\":%d}", poi_id, status);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/setnearbypoishowstatus")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * <strong>小程序代码模版库管理</strong>
	 * 获取草稿箱内的所有临时代码草稿
	 * @since 2.8.18
	 * @param access_token access_token
	 * @return result
	 */
	public static GettemplatedraftlistResult gettemplatedraftlist(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/gettemplatedraftlist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GettemplatedraftlistResult));
	}
	
	/**
	 * <strong>小程序代码模版库管理</strong>
	 * 获取代码模版库中的所有小程序代码模版
	 * @since 2.8.18
	 * @param access_token access_token
	 * @return result
	 */
	public static GettemplatelistResult gettemplatelist(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/gettemplatelist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GettemplatelistResult));
	}
	
	/**
	 * <strong>小程序代码模版库管理</strong>
	 * 将草稿箱的草稿选为小程序代码模版
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param draft_id draft_id
	 * @return result
	 */
	public static BaseResult addtotemplate(string access_token,long draft_id){
		string json = string.format("{\"draft_id\":%d}", draft_id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/addtotemplate")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * <strong>小程序代码模版库管理</strong>
	 * 删除指定小程序代码模版
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param template_id template_id
	 * @return result
	 */
	public static BaseResult deletetemplate(string access_token,long template_id){
		string json = string.format("{\"template_id\":%d}", template_id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/deletetemplate")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * <strong>基础信息设置</strong>
	 * 设置小程序隐私设置（是否可被搜索）
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param status 1表示不可搜索，0表示可搜索
	 * @return result
	 */
	public static BaseResult changewxasearchtustas(string access_token,int status){
		string json = string.format("{\"status\":%d}", status);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/changewxasearchtustas")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * <strong>基础信息设置</strong>
	 * 查询小程序当前隐私设置（是否可被搜索）
	 * @since 2.8.18
	 * @param access_token access_token
	 * @return result
	 */
	public static GetwxasearchstatusResult getwxasearchstatus(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/getwxasearchstatus")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetwxasearchstatusResult));
	}
	
	/**
	 * <strong>文本检查</strong>
	 * 检查一段文本是否含有违法违规内容。 
	 * 应用场景举例：
	 * 用户个人资料违规文字检测；
	 * 媒体新闻类用户发表文章，评论内容检测；
	 * 游戏类用户编辑上传的素材(如答题类小游戏用户上传的问题及答案)检测等。
	 * 
	 * 频率限制：单个 appId 调用上限为 2000 次/分钟，1,000,000 次/天
	 * @since 2.8.20
	 * @param access_token access_token
	 * @param content 要检测的文本内容，长度不超过 500KB
	 * @return result
	 */
	public static BaseResult msg_sec_check(string access_token,string content){
		string json = string.format("{\"content\":\"%s\"}", content);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/wxa/msg_sec_check")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(GetwxasearchstatusResult));
	}
	
	/**
	 * <strong>图片检查</strong>
	 * 校验一张图片是否含有违法违规内容。
	 * 应用场景举例：
	 * 1）图片智能鉴黄：涉及拍照的工具类应用(如美拍，识图类应用)用户拍照上传检测；电商类商品上架图片检测；媒体类用户文章里的图片检测等；
	 * 2）敏感人脸识别：用户头像；媒体类用户文章里的图片检测；社交类用户上传的图片检测等
	 * 
	 * 频率限制：单个 appId 调用上限为 1000 次/分钟，100,000 次/天
	 * @since 2.8.20
	 * @param access_token access_token
	 * @param media 要检测的图片文件，格式支持PNG、JPEG、JPG、GIF，图片尺寸不超过 750px * 1334px
	 * @return result
	 */
	public static BaseResult img_sec_check(string access_token,InputStream media){
		HttpPost httpPost = new HttpPost(BASE_URI + "/wxa/img_sec_check");
		byte[] data = null;
		try {
			data = StreamUtils.copyToByteArray(media);
		} catch (IOException e) {
			logger.error("", e);
		}
		HttpEntity reqEntity = MultipartEntityBuilder.create()
				 .addBinaryBody("media", data, ContentType.DEFAULT_BINARY, "temp.jpg")
                 .addTextBody(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                 .build();
        httpPost.setEntity(reqEntity);
		return LocalHttpClient.executeJsonResult(httpPost, typeid(BaseResult));
	}
	
	/**
	 * <strong>图片检查</strong>
	 * 校验一张图片是否含有违法违规内容。
	 * 应用场景举例：
	 * 1）图片智能鉴黄：涉及拍照的工具类应用(如美拍，识图类应用)用户拍照上传检测；电商类商品上架图片检测；媒体类用户文章里的图片检测等；
	 * 2）敏感人脸识别：用户头像；媒体类用户文章里的图片检测；社交类用户上传的图片检测等
	 * 
	 * 频率限制：单个 appId 调用上限为 1000 次/分钟，100,000 次/天
	 * @since 2.8.20
	 * @param access_token access_token
	 * @param media 要检测的图片文件，格式支持PNG、JPEG、JPG、GIF，图片尺寸不超过 750px * 1334px
	 * @return result
	 */
	public static BaseResult img_sec_check(string access_token,File media){
		HttpPost httpPost = new HttpPost(BASE_URI + "/wxa/img_sec_check");
		FileBody bin = new FileBody(media);
        HttpEntity reqEntity = MultipartEntityBuilder.create()
        		 .addPart("media", bin)
                 .addTextBody(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                 .build();
        httpPost.setEntity(reqEntity);
		return LocalHttpClient.executeJsonResult(httpPost,typeid(BaseResult));
	}
}
