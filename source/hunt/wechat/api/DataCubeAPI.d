module hunt.wechat.api.DataCubeAPI;

import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.datacube.article.ArticlesummaryResult;
import hunt.wechat.bean.datacube.article.ArticletotalResult;
import hunt.wechat.bean.datacube.article.UserreadResult;
import hunt.wechat.bean.datacube.article.UsershareResult;
import hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfo;
import hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfoResult;
import hunt.wechat.bean.datacube.getcardcardinfo.CardInfo;
import hunt.wechat.bean.datacube.getcardcardinfo.CardInfoResult;
import hunt.wechat.bean.datacube.getcardmembercardinfo.MemberCardInfo;
import hunt.wechat.bean.datacube.getcardmembercardinfo.MemberCardInfoResult;
import hunt.wechat.bean.datacube.interfaces.InterfacesummaryResult;
import hunt.wechat.bean.datacube.upstreammsg.UpstreammsgResult;
import hunt.wechat.bean.datacube.user.UsercumulateResult;
import hunt.wechat.bean.datacube.user.UsersummaryResult;
import hunt.wechat.bean.datacube.wxapp.RetaininfoResult;
import hunt.wechat.bean.datacube.wxapp.SummarytrendResult;
import hunt.wechat.bean.datacube.wxapp.UserportraitResult;
import hunt.wechat.bean.datacube.wxapp.VisitdistributionResult;
import hunt.wechat.bean.datacube.wxapp.VisitpageResult;
import hunt.wechat.bean.datacube.wxapp.VisittrendResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 数据统计
 * 
 */
class DataCubeAPI : BaseAPI {

	/**
	 * 拉取卡券概况数据
	 * 1. 查询时间区间需&lt;=62天，否则报错;  
	 * 2. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param bizuinCube bizuinCube
	 * @return result
	 */
	public static BizuinInfoResult getCardBizuinInfo(string access_token, BizuinInfo bizuinCube) {
		return getCardBizuinInfo(access_token, JsonUtil.toJSONString(bizuinCube));
	}
	
	/**
	 * 拉取卡券概况数据
	 * 1. 查询时间区间需&lt;=62天，否则报错；
	 * 2. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param requestJson post完整的json
	 * @return result
	 */
	public static BizuinInfoResult getCardBizuinInfo(string access_token, string requestJson) {
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/datacube/getcardbizuininfo")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BizuinInfoResult));
	}
	
	/**
	 * 获取免费券数据
	 * 1. 该接口目前仅支持拉取免费券（优惠券、团购券、折扣券、礼品券）的卡券相关数据，暂不支持特殊票券（电影票、会议门票、景区门票、飞机票）数据。
	 * 2. 查询时间区间需&lt;=62天，否则报错；
	 * 3. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 4. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param freeCardCube freeCardCube
	 * @return result
	 */
	public static CardInfoResult getCardCardInfo(string access_token, CardInfo freeCardCube) {
		return getCardCardInfo(access_token, JsonUtil.toJSONString(freeCardCube));
	}
	
	/**
	 * 获取免费券数据
	 * 1. 该接口目前仅支持拉取免费券（优惠券、团购券、折扣券、礼品券）的卡券相关数据，暂不支持特殊票券（电影票、会议门票、景区门票、飞机票）数据。
	 * 2. 查询时间区间需&lt;=62天，否则报错；
	 * 3. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 4. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param requestJson post完整的json
	 * @return result
	 */
	public static CardInfoResult getCardCardInfo(string access_token, string requestJson) {
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/datacube/getcardcardinfo")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(CardInfoResult));
	}
	
	
	/**
	 * 拉取会员卡数据
	 * 1. 查询时间区间需&lt;=62天，否则报错；
	 * 2. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param memberCardCube memberCardCube
	 * @return result
	 */
	public static MemberCardInfoResult getCardMemberCardInfo(string access_token, MemberCardInfo memberCardCube) {
		return getCardMemberCardInfo(access_token, JsonUtil.toJSONString(memberCardCube));
	}
	
	/**
	 * 拉取会员卡数据
	 * 1. 查询时间区间需&lt;=62天，否则报错；
	 * 2. 传入时间格式需严格参照示例填写如”2015-06-15”，否则报错；
	 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
	 * @param access_token access_token
	 * @param requestJson post完整的json
	 * @return result
	 */
	public static MemberCardInfoResult getCardMemberCardInfo(string access_token, string requestJson) {
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/datacube/getcardmembercardinfo")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(MemberCardInfoResult));
	}
	
	
	//用户分析数据接口----------------------------------------------------------
	
	/**
	 * 获取用户增减数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UsersummaryResult getusersummary(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getusersummary")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UsersummaryResult));
	}
	
	/**
	 * 获取累计用户数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UsercumulateResult getusercumulate(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getusercumulate")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UsercumulateResult));
	}
	
	//图文分析数据接口----------------------------------------------------------
	
	/**
	 * 获取图文群发每日数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static ArticlesummaryResult getarticlesummary(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getarticlesummary")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(ArticlesummaryResult));
	}
	
	/**
	 * 获取图文群发总数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static ArticletotalResult getarticletotal(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getarticletotal")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(ArticletotalResult));
	}
	
	/**
	 * 获取图文统计数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UserreadResult getuserread(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getuserread")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UserreadResult));
	}
	
	/**
	 * 获取图文统计分时数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UserreadResult getuserreadhour(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getuserreadhour")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UserreadResult));
	}
	
	/**
	 * 获取图文分享转发数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UsershareResult getusershare(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getusershare")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UsershareResult));
	}
	
	/**
	 * 获取图文分享转发分时数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UsershareResult getusersharehour(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getusersharehour")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UsershareResult));
	}
	
	//消息分析数据接口----------------------------------------------------------
	
	/**
	 * 获取消息发送概况数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsg(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsg")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息分送分时数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsghour(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsghour")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息发送周数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsgweek(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsgweek")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息发送月数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsgmonth(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsgmonth")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息发送分布数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsgdist(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsgdist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息发送分布周数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsgdistweek(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsgdistweek")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	/**
	 * 获取消息发送分布月数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	public static UpstreammsgResult getupstreammsgdistmonth(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getupstreammsgdistmonth")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UpstreammsgResult));
	}
	
	//消息分析数据接口----------------------------------------------------------
	
	/**
	 * 获取接口分析数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	static InterfacesummaryResult getinterfacesummary(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getinterfacesummary")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(InterfacesummaryResult));
	}
	
	/**
	 * 获取接口分析分时数据
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.6
	 */
	static InterfacesummaryResult getinterfacesummaryhour(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getinterfacesummaryhour")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(InterfacesummaryResult));
	}
	
	//-------------------------- 小程序
	
	/**
	 * 概况趋势	(小程序)
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static SummarytrendResult getweanalysisappiddailysummarytrend(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappiddailysummarytrend")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(SummarytrendResult));
	}
	
	/**
	 * 访问趋势 (小程序)
	 * 日趋势
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static VisittrendResult getweanalysisappiddailyvisittrend(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappiddailyvisittrend")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(VisittrendResult));
	}
	
	/**
	 * 访问趋势 (小程序)
	 * 周趋势
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static VisittrendResult getweanalysisappidweeklyvisittrend(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidweeklyvisittrend")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(VisittrendResult));
	}
	
	/**
	 * 访问趋势 (小程序)
	 * 月趋势
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static VisittrendResult getweanalysisappidmonthlyvisittrend(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidmonthlyvisittrend")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(VisittrendResult));
	}
	
	/**
	 * 访问分布 (小程序)
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static VisitdistributionResult getweanalysisappidvisitdistribution(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidvisitdistribution")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(VisitdistributionResult));
	}
	
	/**
	 * 访问留存 (小程序)
	 * 日留存
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static RetaininfoResult getweanalysisappiddailyretaininfo(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappiddailyretaininfo")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(RetaininfoResult));
	}
	
	/**
	 * 访问留存 (小程序)
	 * 周留存
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static RetaininfoResult getweanalysisappidweeklyretaininfo(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidweeklyretaininfo")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(RetaininfoResult));
	}
	
	/**
	 * 访问留存 (小程序)
	 * 月留存
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static RetaininfoResult getweanalysisappidmonthlyretaininfo(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidmonthlyretaininfo")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(RetaininfoResult));
	}
	
	/**
	 * 访问页面 (小程序)
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.9
	 */
	public static VisitpageResult getweanalysisappidvisitpage(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappidvisitpage")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(VisitpageResult));
	}
	
	/**
	 * 用户画像 (小程序)
	 * @param access_token access_token
	 * @param begin_date begin_date
	 * @param end_date end_date
	 * @return result
	 * @since 2.8.19
	 */
	public static UserportraitResult getweanalysisappiduserportrait(string access_token, string begin_date,string end_date) {
		string requestJson = string.format("{\"begin_date\":\"%s\",\"end_date\":\"%s\"}", begin_date,end_date);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/datacube/getweanalysisappiduserportrait")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(requestJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(UserportraitResult));
	}
	
}
