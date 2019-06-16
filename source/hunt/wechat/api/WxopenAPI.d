module hunt.wechat.api.WxopenAPI;

import hunt.text.Charset;
import hunt.collection.List;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.wxopen.TemplateAddResult;
import hunt.wechat.bean.wxopen.TemplateLibraryGetResult;
import hunt.wechat.bean.wxopen.TemplateLibraryListResult;
import hunt.wechat.bean.wxopen.TemplateListResult;
import hunt.wechat.bean.wxopen.Wxamplink;
import hunt.wechat.bean.wxopen.WxamplinkgetResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 微信小程序
 * 
 * @since 2.8.18
 */
class WxopenAPI : BaseAPI {
	
	/**
	 * 获取公众号关联的小程序
	 * @since 2.8.18
	 * @param access_token access_token
	 * @return result
	 */
	public static WxamplinkgetResult wxamplinkget(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/wxamplinkget")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(WxamplinkgetResult));
	}
	
	/**
	 * 关联小程序
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param wxamplink wxamplink
	 * @return result
	 */
	public static BaseResult wxamplink(string access_token,Wxamplink wxamplink){
		string json = JsonUtil.toJSONString(wxamplink);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/wxamplink")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
	
	/**
	 * 解除已关联的小程序
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param appid appid
	 * @return result
	 */
	public static BaseResult wxampunlink(string access_token,string appid){
		string json = string.format("{\"appid\":\"%s\"}", appid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/wxampunlink")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}

	/**
	 * 获取小程序模板库标题列表
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param offset offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。
	 * @param count offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。
	 * @return result
	 */
	public static TemplateLibraryListResult templateLibraryList(string access_token,int offset,int count){
		string json = string.format("{\"offset\":%d,\"count\":%d}", offset, count);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/template/library/list")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(TemplateLibraryListResult));
	}
	
	/**
	 * 获取模板库某个模板标题下关键词库
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param id 模板标题id，可通过接口获取，也可登录小程序后台查看获取
	 * @return result
	 */
	public static TemplateLibraryGetResult templateLibraryGet(string access_token,string id){
		string json = string.format("{\"id\":\"%s\"}", id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/template/library/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(TemplateLibraryGetResult));
	}
	
	/**
	 * 组合模板并添加至帐号下的个人模板库
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param id 模板标题id，可通过接口获取，也可登录小程序后台查看获取
	 * @param keyword_id_list 开发者自行组合好的模板关键词列表，关键词顺序可以自由搭配（例如[3,5,4]或[4,5,3]），最多支持10个关键词组合
	 * @return result
	 */
	public static TemplateAddResult templateAdd(string access_token,string id,List!(Integer) keyword_id_list){
		string json = string.format("{\"id\":\"%s\",\"keyword_id_list\":%s}", id,JsonUtil.toJSONString(keyword_id_list));
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/template/add")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(TemplateAddResult));
	}
	
	/**
	 * 获取帐号下已存在的模板列表
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param offset offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。最后一页的list长度可能小于请求的count
	 * @param count offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。最后一页的list长度可能小于请求的count
	 * @return result
	 */
	public static TemplateListResult templateList(string access_token,int offset,int count){
		string json = string.format("{\"offset\":%d,\"count\":%d}", offset, count);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/template/list")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(TemplateListResult));
	}
	
	/**
	 * 删除帐号下的某个模板
	 * @since 2.8.18
	 * @param access_token access_token
	 * @param template_id 要删除的模板id
	 * @return result
	 */
	public static BaseResult templateDel(string access_token,string template_id){
		string json = string.format("{\"template_id\":\"%s\"}", template_id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/wxopen/template/del")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(json,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}
}
