module hunt.wechat.api.PoiAPI;

import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.poi.CategoryListResult;
import hunt.wechat.bean.poi.Poi;
import hunt.wechat.bean.poi.PoiListResult;
import hunt.wechat.bean.poi.PoiResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 微信门店
 * 
 * 
 *
 */
class PoiAPI : BaseAPI {

	/**
	 * 创建门店
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult addPoi(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/cgi-bin/poi/addpoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 创建门店
	 * @param accessToken accessToken
	 * @param poi poi
	 * @return result
	 */
	public static BaseResult addPoi(string accessToken, Poi poi) {
		return addPoi(accessToken, JsonUtil.toJSONString(poi));
	}

	/**
	 * 查询门店信息
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static PoiResult getPoi(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/cgi-bin/poi/getpoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(PoiResult));
	}

	/**
	 * 查询门店信息
	 * @param accessToken accessToken
	 * @param poi_id poi_id
	 * @return result
	 */
	public static PoiResult getPoiByPoiId(string accessToken, string poi_id) {
		return getPoi(accessToken, string.format("{\"poi_id\": \"%s\"}", poi_id));
	}

	/**
	 * 查询门店列表
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static PoiListResult getPoiList(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/cgi-bin/poi/getpoilist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(PoiListResult));
	}

	/**
	 * 查询门店列表
	 * 
	 * @param accessToken 令牌
	 * @param begin 开始位置，0 即为从第一条开始查询
	 * @param limit 返回数据条数，最大允许50，默认为20
	 * @return result
	 */
	public static PoiListResult getPoiList(string accessToken, int begin, int limit) {
		return getPoiList(accessToken, string.format("{\"begin\":%d, \"limit\": %d}", begin, limit));
	}

	/**
	 * 修改门店服务信息
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult updatePoi(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/cgi-bin/poi/updatepoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 修改门店服务信息
	 * @param accessToken accessToken
	 * @param poi poi
	 * @return result
	 */
	public static BaseResult updatePoi(string accessToken, Poi poi) {
		return updatePoi(accessToken, JsonUtil.toJSONString(poi));
	}

	/**
	 * 删除门店
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult delPoi(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/cgi-bin/poi/delpoi")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 删除门店
	 * 
	 * @param accessToken
	 *            授权令牌
	 * @param poiId
	 *            门店ID
	 * @return result
	 */
	public static BaseResult delPoiByPoiId(string accessToken, string poiId) {
		return delPoi(accessToken, string.format("{\"poi_id\": \"%s\"}", poiId));
	}

	/**
	 * 获取门店类目表
	 * @param accessToken accessToken
	 * @return result
	 */
	public static CategoryListResult getWxCategory(string accessToken) {
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setUri(BASE_URI + "/cgi-bin/poi/getwxcategory")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken)).build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CategoryListResult));
	}
}
