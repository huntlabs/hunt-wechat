module hunt.wechat.api.PayMchAPI;

import hunt.Exceptions;
import hunt.text.Charset;
import hunt.collection.Map;
import java.util.UUID;
import java.util.zip.GZIPInputStream;

//import org.apache.http.Header;
//import org.apache.http.HttpEntity;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.ClientProtocolException;
//import org.apache.http.client.ResponseHandler;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;
//import org.apache.http.util.EntityUtils;

import hunt.wechat.bean.paymch;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;
import hunt.wechat.util.MapUtil;
import hunt.wechat.util.SignatureUtil;
import hunt.wechat.util.StreamUtils;
import hunt.wechat.util.XMLConverUtil;

/**
 * 微信支付 基于V3.X 版本
 * 
 *
 */
class PayMchAPI : BaseAPI{
	
	private static ThreadLocal!(Boolean) sandboxnew = new ThreadLocal!(Boolean)();
	
	/**
	 * 仿真测试 开始
	 * @since 2.8.6
	 */
	public static void sandboxnewStart(){
		sandboxnew.set(true);
	}
	
	/**
	 * 仿真测试 结束
	 * @since 2.8.6
	 */
	public static void sandboxnewEnd(){
		sandboxnew.set(null);
	}
	
	/**
	 * 获取支付base URI路径
	 * @return baseURI
	 */
	private static string baseURI(){
		if(sandboxnew.get() == null){
			return MCH_URI;
		}else{
			return MCH_URI + "/sandboxnew";
		}
	}
	
	/**
	 * 获取仿真测试验签秘钥
	 * @param mch_id mch_id
	 * @param key key
	 * @return sandbox_signkey
	 * @since 2.8.13
	 */
	public static SandboxSignkey sandboxnewPayGetsignkey(string mch_id,string key){
		MchBaseResult mchBaseResult = new MchBaseResult();
		mchBaseResult.setMch_id(mch_id);
		mchBaseResult.setNonce_str(UUID.randomUUID().toString().replace("-", ""));
		Map!(string,string) map = MapUtil.objectToMap(mchBaseResult);
		string sign = SignatureUtil.generateSign(map,mchBaseResult.getSign_type(),key);
		mchBaseResult.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(mchBaseResult);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(MCH_URI + "/sandboxnew/pay/getsignkey")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest, typeid(SandboxSignkey), mchBaseResult.getSign_type(), key);
	}

	/**
	 * 统一下单
	 * @param unifiedorder unifiedorder
	 * @param key key
	 * @return UnifiedorderResult
	 */
	public static UnifiedorderResult payUnifiedorder(Unifiedorder unifiedorder,string key){
		Map!(string,string) map = MapUtil.objectToMap(unifiedorder, "detail", "scene_info");
		//@since 2.8.8 detail 字段签名处理
		if(unifiedorder.getDetail() != null){
			map.put("detail",JsonUtil.toJSONString(unifiedorder.getDetail()));
		}
		//@since 2.8.21 scene_info 字段签名处理
		if(unifiedorder.getScene_info() != null){
			map.put("scene_info",JsonUtil.toJSONString(unifiedorder.getScene_info()));
		}
		if(key != null){
			string sign = SignatureUtil.generateSign(map,unifiedorder.getSign_type(),key);
			unifiedorder.setSign(sign);
		}
		string unifiedorderXML = XMLConverUtil.convertToXML(unifiedorder);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(xmlHeader)
										.setUri(baseURI()+ "/pay/unifiedorder")
										.setEntity(new StringEntity(unifiedorderXML,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(UnifiedorderResult),unifiedorder.getSign_type(),key);
	}

	/**
	 * 刷卡支付  提交被扫支付API
	 * @param micropay micropay
	 * @param key key
	 * @return MicropayResult
	 */
	public static MicropayResult payMicropay(Micropay micropay,string key){
		Map!(string,string) map = MapUtil.objectToMap(micropay);
		//@since 2.8.14 detail 字段签名处理
		if(micropay.getDetail() != null){
			map.put("detail",JsonUtil.toJSONString(micropay.getDetail()));
		}
		//@since 2.8.27 scene_info 字段签名处理
		if(micropay.getScene_info() != null){
			map.put("scene_info",JsonUtil.toJSONString(micropay.getScene_info()));
		}
		string sign = SignatureUtil.generateSign(map,micropay.getSign_type(),key);
		micropay.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(micropay);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/micropay")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MicropayResult),micropay.getSign_type(),key);
	}

	/**
	 * 查询订单
	 * @param mchOrderquery mchOrderquery
	 * @param key key
	 * @return MchOrderInfoResult
	 */
	public static MchOrderInfoResult payOrderquery(MchOrderquery mchOrderquery,string key){
		Map!(string,string) map = MapUtil.objectToMap(mchOrderquery);
		string sign = SignatureUtil.generateSign(map,mchOrderquery.getSign_type(),key);
		mchOrderquery.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(mchOrderquery);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/orderquery")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchOrderInfoResult),mchOrderquery.getSign_type(),key);
	}



	/**
	 * 关闭订单
	 * @param closeorder closeorder
	 * @param key 商户支付密钥
	 * @return MchBaseResult
	 */
	public static MchBaseResult payCloseorder(Closeorder closeorder,string key){
		Map!(string,string) map = MapUtil.objectToMap(closeorder);
		string sign = SignatureUtil.generateSign(map,closeorder.getSign_type(),key);
		closeorder.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(closeorder);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/closeorder")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchBaseResult),closeorder.getSign_type(),key);
	}


	/**
	 * 申请退款
	 *
	 * 注意：
	 *	1.交易时间超过半年的订单无法提交退款；
	 *	2.微信支付退款支持单笔交易分多次退款，多次退款需要提交原支付订单的商户订单号和设置不同的退款单号。一笔退款失败后重新提交，要采用原来的退款单号。总退款金额不能超过用户实际支付金额。
	 * @param secapiPayRefund secapiPayRefund
	 * @param key 商户支付密钥
	 * @return SecapiPayRefundResult
	 */
	public static SecapiPayRefundResult secapiPayRefund(SecapiPayRefund secapiPayRefund,string key){
		Map!(string,string) map = MapUtil.objectToMap( secapiPayRefund);
		string sign = SignatureUtil.generateSign(map,secapiPayRefund.getSign_type(),key);
		secapiPayRefund.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( secapiPayRefund);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/secapi/pay/refund")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(secapiPayRefund.getMch_id(),httpUriRequest,typeid(SecapiPayRefundResult),secapiPayRefund.getSign_type(),key);
	}

	/**
	 * 撤销订单
	 * 7天以内的交易单可调用撤销，其他正常支付的单如需实现相同功能请调用申请退款API。提交支付交易后调用【查询订单API】，没有明确的支付结果再调用【撤销订单API】。
	 * 调用支付接口后请勿立即调用撤销订单API，建议支付后至少15s后再调用撤销订单接口。
	 * @param mchReverse mchReverse
	 * @param key key
	 * @return MchReverseResult
	 */
	public static MchReverseResult secapiPayReverse(MchReverse mchReverse,string key){
		Map!(string,string) map = MapUtil.objectToMap( mchReverse);
		string sign = SignatureUtil.generateSign(map,mchReverse.getSign_type(),key);
		mchReverse.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( mchReverse);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/secapi/pay/reverse")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(mchReverse.getMch_id(),httpUriRequest,typeid(MchReverseResult),mchReverse.getSign_type(),key);
	}

	/**
	 * 查询退款
	 *
	 * 提交退款申请后，通过调用该接口查询退款状态。退款有一定延时，用零钱支付的退款
	 * 20 分钟内到账，银行卡支付的退款3 个工作日后重新查询退款状态。
	 * @param refundquery refundquery
	 * @param key 商户支付密钥
	 * @return RefundqueryResult
	 */
	public static RefundqueryResult payRefundquery(Refundquery refundquery,string key){
		Map!(string,string) map = MapUtil.objectToMap(refundquery);
		string sign = SignatureUtil.generateSign(map,refundquery.getSign_type(),key);
		refundquery.setSign(sign);
		string refundqueryXML = XMLConverUtil.convertToXML(refundquery);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/refundquery")
				.setEntity(new StringEntity(refundqueryXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(RefundqueryResult),refundquery.getSign_type(),key);
	}

	/**
	 * 下载对账单
	 * @param downloadbill downloadbill
	 * @param key key
	 * @return DownloadbillResult
	 */
	public static DownloadbillResult payDownloadbill(MchDownloadbill downloadbill,string key){
		Map!(string,string) map = MapUtil.objectToMap(downloadbill);
		string sign = SignatureUtil.generateSign(map,downloadbill.getSign_type(),key);
		downloadbill.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(downloadbill);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/downloadbill")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.execute(httpUriRequest,new class ResponseHandler!(DownloadbillResult) {

			override
			public DownloadbillResult handleResponse(HttpResponse response)
					{
				int status = response.getStatusLine().getStatusCode();
                if (status >= 200 && status < 300) {
                    HttpEntity entity = response.getEntity();
					string str;
					//GZIP
					if (entity.getContentType().getValue().matches("(?i).*gzip.*")) {
						str = StreamUtils.copyToString(new GZIPInputStream(entity.getContent()),
								Charset.forName("UTF-8"));
					} else {
						str = EntityUtils.toString(entity, "utf-8");
					}
					EntityUtils.consume(entity);
                    if(str.matches(".*<xml>(.*|\\n)+</xml>.*")){
                    	return XMLConverUtil.convertToObject(typeid(DownloadbillResult),str);
                    }else{
                    	DownloadbillResult dr = new DownloadbillResult();
                    	dr.setData(str);
                    	// 获取返回头数据 签名信息
						Header headerDigest = response.getFirstHeader("Digest");
						if (headerDigest != null) {
							string[] hkv = headerDigest.getValue().split("=");
							dr.setSign_type(hkv[0]);
							dr.setSign(hkv[1]);
						}
                    	return dr;
                    }
                } else {
                    throw new ClientProtocolException("Unexpected response status: " + status);
                }
			}
		});
	}

	/**
	 * 下载资金账单
	 * 商户可以通过该接口下载自2017年6月1日起 的历史资金流水账单。
	 * 说明：
	 * 1、资金账单中的数据反映的是商户微信账户资金变动情况；
	 * 2、当日账单在次日上午9点开始生成，建议商户在上午10点以后获取；
	 * 3、资金账单中涉及金额的字段单位为“元”。
	 * @since 2.8.18
	 * @param payDownloadfundflow payDownloadfundflow
	 * @param key key
	 * @return PayDownloadfundflowResult 对象，请求成功时包含以下数据：
	 * data 文本表格数据 
	 * sign_type 签名类型 
	 * sign 签名
	 */
	public static PayDownloadfundflowResult payDownloadfundflow(PayDownloadfundflow payDownloadfundflow,string key){
		Map!(string,string) map = MapUtil.objectToMap(payDownloadfundflow);
		string sign_type = map.get("sign_type");
		//设置默认签名类型HMAC-SHA256
		if(sign_type == null || ""== sign_type){
			sign_type = "HMAC-SHA256";
		}
		string sign = SignatureUtil.generateSign(map,sign_type,key);
		payDownloadfundflow.setSign(sign);
		string xmlData = XMLConverUtil.convertToXML(payDownloadfundflow);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/downloadfundflow")
				.setEntity(new StringEntity(xmlData,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecute(payDownloadfundflow.getMch_id(),httpUriRequest,new class ResponseHandler!(PayDownloadfundflowResult) {
	
					override
					public PayDownloadfundflowResult handleResponse(HttpResponse response)
							 {
						int status = response.getStatusLine().getStatusCode();
						if (status >= 200 && status < 300) {
							HttpEntity entity = response.getEntity();
							string str;
							//GZIP
							if (entity.getContentType().getValue().matches("(?i).*gzip.*")) {
								str = StreamUtils.copyToString(new GZIPInputStream(entity.getContent()),
										Charset.forName("UTF-8"));
							} else {
								str = EntityUtils.toString(entity, "utf-8");
							}
							EntityUtils.consume(entity);
							if (str.matches(".*<xml>(.*|\\n)+</xml>.*")) {
								return XMLConverUtil.convertToObject(typeid(PayDownloadfundflowResult), str);
							} else {
								PayDownloadfundflowResult dr = new PayDownloadfundflowResult();
								dr.setData(str);
								// 获取返回头数据 签名信息
								Header headerDigest = response.getFirstHeader("Digest");
								if (headerDigest != null) {
									string[] hkv = headerDigest.getValue().split("=");
									dr.setSign_type(hkv[0]);
									dr.setSign(hkv[1]);
								}
								return dr;
							}
						} else {
							throw new ClientProtocolException("Unexpected response status: " + status);
						}
					}
		});
	}

	/**
	 * 短链接转换
	 * @param shorturl shorturl
	 * @param key 商户支付密钥
	 * @return MchShorturlResult
	 */
	public static MchShorturlResult toolsShorturl(MchShorturl shorturl,string key){
		Map!(string,string) map = MapUtil.objectToMap(shorturl);
		string sign = SignatureUtil.generateSign(map,shorturl.getSign_type(),key);
		shorturl.setSign(sign);
		string shorturlXML = XMLConverUtil.convertToXML(shorturl);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/tools/shorturl")
				.setEntity(new StringEntity(shorturlXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchShorturlResult),shorturl.getSign_type(),key);
	}
	
	/**
	 * 刷卡支付 授权码查询OPENID接口
	 * @param authcodetoopenid authcodetoopenid
	 * @param key key
	 * @return AuthcodetoopenidResult
	 */
	public static AuthcodetoopenidResult toolsAuthcodetoopenid(Authcodetoopenid authcodetoopenid,string key){
		Map!(string,string) map = MapUtil.objectToMap(authcodetoopenid);
		string sign = SignatureUtil.generateSign(map,authcodetoopenid.getSign_type(),key);
		authcodetoopenid.setSign(sign);
		string shorturlXML = XMLConverUtil.convertToXML(authcodetoopenid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/tools/authcodetoopenid")
				.setEntity(new StringEntity(shorturlXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(AuthcodetoopenidResult),authcodetoopenid.getSign_type(),key);
	}

	/**
	 * 交易保障  
	 * 测速上报
	 * @param report report
	 * @param key key
	 * @return MchBaseResult
	 */
	public static MchBaseResult payitilReport(Report report,string key){
		Map!(string,string) map = MapUtil.objectToMap(report);
		string sign = SignatureUtil.generateSign(map,report.getSign_type(),key);
		report.setSign(sign);
		string shorturlXML = XMLConverUtil.convertToXML(report);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/payitil/report")
				.setEntity(new StringEntity(shorturlXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchBaseResult));
	}

	/**
	 * 发放代金券
	 * @param sendCoupon sendCoupon
	 * @param key key
	 * @return SendCouponResult
	 */
	public static SendCouponResult mmpaymkttransfersSend_coupon(SendCoupon sendCoupon,string key){
		Map!(string,string) map = MapUtil.objectToMap( sendCoupon);
		string sign = SignatureUtil.generateSign(map,sendCoupon.getSign_type(),key);
		sendCoupon.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( sendCoupon);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/send_coupon")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(sendCoupon.getMch_id(),httpUriRequest,typeid(SendCouponResult),sendCoupon.getSign_type(),key);
	}

	/**
	 * 查询代金券批次
	 * @param queryCouponStock queryCouponStock
	 * @param key key
	 * @return QueryCouponStockResult
	 */
	public static QueryCouponStockResult mmpaymkttransfersQuery_coupon_stock(QueryCouponStock queryCouponStock,string key){
		Map!(string,string) map = MapUtil.objectToMap( queryCouponStock);
		string sign = SignatureUtil.generateSign(map,queryCouponStock.getSign_type(),key);
		queryCouponStock.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( queryCouponStock);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/query_coupon_stock")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(QueryCouponStockResult),queryCouponStock.getSign_type(),key);
	}

	/**
	 * 查询代金券信息
	 * @param queryCoupon queryCoupon
	 * @param key key
	 * @return QueryCouponResult
	 */
	public static QueryCouponResult promotionQuery_coupon(QueryCoupon queryCoupon,string key){
		Map!(string,string) map = MapUtil.objectToMap( queryCoupon);
		string sign = SignatureUtil.generateSign(map,queryCoupon.getSign_type(),key);
		queryCoupon.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( queryCoupon);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/querycouponsinfo")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(QueryCouponResult),queryCoupon.getSign_type(),key);
	}

	/**
	 * 现金红包 
	 *
	 * 1.发送频率限制------默认1800/min 
	 * 2.发送个数上限------按照默认1800/min算
	 * 3.金额上限------根据传入场景id不同默认上限不同，可以在商户平台产品设置进行设置和申请，最大不大于4999元/个
	 * 4.其他的“量”上的限制还有哪些？------用户当天的领取上限次数,默认是10
	 * 5.如果量上满足不了我们的需求，如何提高各个上限？------金额上限和用户当天领取次数上限可以在商户平台进行设置
	 * 注 
	 * 1：如果你是服务商，希望代你的特约商户发红包，你可以申请获得你特约商户的“现金红包产品授权”。操作路径如下：【登录商户平台-产品中心-
	 * 特约商户授权产品】（即将上线） 
	 * 2：红包金额大于200时，请求参数scene_id必传
	 * 
	 * @param sendredpack
	 *            sendredpack
	 * @param key
	 *            key
	 * @return SendredpackResult
	 */
	public static SendredpackResult mmpaymkttransfersSendredpack(Sendredpack sendredpack,string key){
		Map!(string,string) map = MapUtil.objectToMap( sendredpack);
		string sign = SignatureUtil.generateSign(map,sendredpack.getSign_type(),key);
		sendredpack.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( sendredpack);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/sendredpack")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(sendredpack.getMch_id(),httpUriRequest,typeid(SendredpackResult),sendredpack.getSign_type(),key);
	}

	/**
	 * 裂变红包 
	 * 一次可以发放一组红包。首先领取的用户为种子用户，种子用户领取一组红包当中的一个，并可以通过社交分享将剩下的红包给其他用户。裂变红包充分利用了人际传播的优势。
	 * @param sendgroupredpack sendgroupredpack
	 * @param key key
	 * @return SendredpackResult
	 */
	public static SendredpackResult mmpaymkttransfersSendgroupredpack(Sendgroupredpack sendgroupredpack,string key){
		Map!(string,string) map = MapUtil.objectToMap( sendgroupredpack);
		string sign = SignatureUtil.generateSign(map,sendgroupredpack.getSign_type(),key);
		sendgroupredpack.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( sendgroupredpack);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/sendgroupredpack")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(sendgroupredpack.getMch_id(),httpUriRequest,typeid(SendredpackResult),sendgroupredpack.getSign_type(),key);
	}
	
	/**
	 * 查询红包记录 
	 * 用于商户对已发放的红包进行查询红包的具体信息，可支持普通红包和裂变包。
	 * @since 2.8.5
	 * @param gethbinfo gethbinfo
	 * @param key key
	 * @return GethbinfoResult
	 */
	public static GethbinfoResult mmpaymkttransfersGethbinfo(Gethbinfo gethbinfo,string key){
		Map!(string,string) map = MapUtil.objectToMap( gethbinfo);
		string sign = SignatureUtil.generateSign(map,gethbinfo.getSign_type(),key);
		gethbinfo.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( gethbinfo);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/gethbinfo")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(gethbinfo.getMch_id(),httpUriRequest,typeid(GethbinfoResult),gethbinfo.getSign_type(),key);
	}


	/**
	 * 企业付款 
	 * 接口调用规则：
	 * 给同一个实名用户付款，单笔单日限额2W/2W
	 * 给同一个非实名用户付款，单笔单日限额2000/2000
	 * 一个商户同一日付款总额限额100W
	 * 单笔最小金额默认为1元
	 * 每个用户每天最多可付款10次，可以在商户平台--API安全进行设置
	 * 给同一个用户付款时间间隔不得低于15秒
	 * 
	 * @param transfers
	 *            transfers
	 * @param key
	 *            key
	 * @return TransfersResult
	 */
	public static TransfersResult mmpaymkttransfersPromotionTransfers(Transfers transfers,string key){
		Map!(string,string) map = MapUtil.objectToMap( transfers);
		string sign = SignatureUtil.generateSign(map,transfers.getSign_type(),key);
		transfers.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( transfers);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/promotion/transfers")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(transfers.getMchid(),httpUriRequest,typeid(TransfersResult),transfers.getSign_type(),key);
	}
	
	/**
	 * 查询企业付款
	 * @since 2.8.5
	 * @param gettransferinfo gettransferinfo
	 * @param key key
	 * @return GettransferinfoResult
	 */
	public static GettransferinfoResult mmpaymkttransfersGettransferinfo(Gettransferinfo gettransferinfo,string key){
		Map!(string,string) map = MapUtil.objectToMap( gettransferinfo);
		string sign = SignatureUtil.generateSign(map,gettransferinfo.getSign_type(),key);
		gettransferinfo.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( gettransferinfo);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/mmpaymkttransfers/gettransferinfo")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(gettransferinfo.getMch_id(),httpUriRequest,typeid(GettransferinfoResult),gettransferinfo.getSign_type(),key);
	}

	/**
	 * 委托代扣-支付中签约
	 * @param payContractorder payContractorder
	 * @param key key
	 * @return PayContractorderResult
	 */
	public static PayContractorderResult payContractorder(PayContractorder payContractorder,string key){
		Map!(string,string) map = MapUtil.objectToMap(payContractorder);
		string sign = SignatureUtil.generateSign(map,payContractorder.getSign_type(),key);
		payContractorder.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( payContractorder);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/contractorder")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(PayContractorderResult),payContractorder.getSign_type(),key);
	}

	/**
	 * 委托代扣-扣款
	 * @param pappayapply pappayapply
	 * @param key key
	 * @return PappayapplyResult
	 */
	public static PappayapplyResult payPappayapply(Pappayapply pappayapply,string key){
		Map!(string,string) map = MapUtil.objectToMap( pappayapply);
		string sign = SignatureUtil.generateSign(map,pappayapply.getSign_type(),key);
		pappayapply.setSign(sign);
		string secapiPayRefundXML = XMLConverUtil.convertToXML( pappayapply);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/pappayapply")
				.setEntity(new StringEntity(secapiPayRefundXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(PappayapplyResult),pappayapply.getSign_type(),key);
	}
	
	/**
	 * 委托代扣-订单查询
	 * @param mchOrderquery mchOrderquery
	 * @param key key
	 * @return MchOrderInfoResult
	 */
	public static MchOrderInfoResult payPaporderquery(MchOrderquery mchOrderquery,string key){
		Map!(string,string) map = MapUtil.objectToMap(mchOrderquery);
		string sign = SignatureUtil.generateSign(map,mchOrderquery.getSign_type(),key);
		mchOrderquery.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(mchOrderquery);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/pay/paporderquery")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchOrderInfoResult),mchOrderquery.getSign_type(),key);
	}

	/**
	 * 委托代扣-查询签约关系
	 * @param papayQuerycontract papayQuerycontract
	 * @param key key
	 * @return PapayQuerycontractResult
	 */
	public static PapayQuerycontractResult papayQuerycontract(PapayQuerycontract papayQuerycontract,string key){
		Map!(string,string) map = MapUtil.objectToMap(papayQuerycontract);
		string sign = SignatureUtil.generateSign(map,papayQuerycontract.getSign_type(),key);
		papayQuerycontract.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(papayQuerycontract);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/papay/querycontract")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(PapayQuerycontractResult),papayQuerycontract.getSign_type(),key);
	}

	/**
	 * 委托代扣-解约
	 * @param papayDeletecontract papayDeletecontract
	 * @param key key
	 * @return PapayDeletecontractResult
	 */
	public static PapayDeletecontractResult papayDeletecontract(PapayDeletecontract papayDeletecontract,string key){
		Map!(string,string) map = MapUtil.objectToMap(papayDeletecontract);
		string sign = SignatureUtil.generateSign(map,papayDeletecontract.getSign_type(),key);
		papayDeletecontract.setSign(sign);
		string closeorderXML = XMLConverUtil.convertToXML(papayDeletecontract);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI()+ "/papay/deletecontract")
				.setEntity(new StringEntity(closeorderXML,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(PapayDeletecontractResult),papayDeletecontract.getSign_type(),key);
	}
	
	/**
	 * 委托代扣-H5 纯签约
	 * @since 2.8.25
	 * @param papayEntrustweb
	 *            papayEntrustweb
	 * @param key
	 *            key
	 * @return PapayH5entrustwebResult
	 */
	public static PapayH5entrustwebResult papayH5entrustweb(PapayEntrustweb papayEntrustweb, string key) {
		Map!(string, string) map = MapUtil.objectToMap(papayEntrustweb);
		string sign = SignatureUtil.generateSign(map, "HMAC-SHA256", key);
		map.put("sign", sign);
		RequestBuilder requestBuilder = RequestBuilder
				.get()
				.setUri(baseURI() + "/papay/h5entrustweb");
		foreach (string k,string v ; map) {
			if (v != null && !(""== v)) {
				requestBuilder.addParameter(k, v);
			}
		}
		return LocalHttpClient.executeXmlResult(requestBuilder.build(), typeid(PapayH5entrustwebResult), "HMAC-SHA256",
				key);
	}
	
	/**
	 * 分账-请求单次分账
	 * @since 2.8.25
	 * @param secapiPayProfitsharing secapiPayProfitsharing
	 * @param key key
	 * @return SecapiPayProfitsharingResult
	 */
	public static SecapiPayProfitsharingResult secapiPayProfitsharing(SecapiPayProfitsharing secapiPayProfitsharing,string key){
		Map!(string,string) map = MapUtil.objectToMap(secapiPayProfitsharing, "receivers");
		if(secapiPayProfitsharing.getReceivers() != null){
			map.put("receivers", JsonUtil.toJSONString(secapiPayProfitsharing.getReceivers()));
		}
		string sign = SignatureUtil.generateSign(map,secapiPayProfitsharing.getSign_type() == null? "HMAC-SHA256": secapiPayProfitsharing.getSign_type(),key);
		secapiPayProfitsharing.setSign(sign);
		string xml = XMLConverUtil.convertToXML(secapiPayProfitsharing);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/secapi/pay/profitsharing")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(secapiPayProfitsharing.getMch_id(), httpUriRequest,typeid(SecapiPayProfitsharingResult), secapiPayProfitsharing.getSign_type() == null? "HMAC-SHA256": secapiPayProfitsharing.getSign_type(),key);
	}
	
	/**
	 * 分账-请求多次分账
	 * @since 2.8.26
	 * @param secapiPayProfitsharing secapiPayProfitsharing
	 * @param key key
	 * @return SecapiPayProfitsharingResult
	 */
	public static SecapiPayProfitsharingResult secapiPayMultiprofitsharing(SecapiPayProfitsharing secapiPayProfitsharing,string key){
		Map!(string,string) map = MapUtil.objectToMap(secapiPayProfitsharing, "receivers");
		if(secapiPayProfitsharing.getReceivers() != null){
			map.put("receivers", JsonUtil.toJSONString(secapiPayProfitsharing.getReceivers()));
		}
		string sign = SignatureUtil.generateSign(map,secapiPayProfitsharing.getSign_type() == null? "HMAC-SHA256": secapiPayProfitsharing.getSign_type(),key);
		secapiPayProfitsharing.setSign(sign);
		string xml = XMLConverUtil.convertToXML(secapiPayProfitsharing);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/secapi/pay/multiprofitsharing")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(secapiPayProfitsharing.getMch_id(), httpUriRequest,typeid(SecapiPayProfitsharingResult), secapiPayProfitsharing.getSign_type() == null? "HMAC-SHA256": secapiPayProfitsharing.getSign_type(),key);
	}
	
	/**
	 * 分账-完结分账
	 * @since 2.8.26
	 * @param profitsharingfinish profitsharingfinish
	 * @param key key
	 * @return SecapiPayProfitsharingfinishResult
	 */
	public static SecapiPayProfitsharingfinishResult secapiPayProfitsharingfinish(SecapiPayProfitsharingfinish profitsharingfinish,string key){
		Map!(string,string) map = MapUtil.objectToMap(profitsharingfinish);
		string sign = SignatureUtil.generateSign(map,profitsharingfinish.getSign_type() == null? "HMAC-SHA256": profitsharingfinish.getSign_type(),key);
		profitsharingfinish.setSign(sign);
		string xml = XMLConverUtil.convertToXML(profitsharingfinish);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/secapi/pay/profitsharingfinish")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.keyStoreExecuteXmlResult(profitsharingfinish.getMch_id(), httpUriRequest,typeid(SecapiPayProfitsharingfinishResult), profitsharingfinish.getSign_type() == null? "HMAC-SHA256": profitsharingfinish.getSign_type(),key);
	}
	
	/**
	 * 分账-查询分账结果
	 * @since 2.8.25
	 * @param payProfitsharingquery payProfitsharingquery
	 * @param key key
	 * @return PayProfitsharingqueryResult
	 */
	public static PayProfitsharingqueryResult payProfitsharingquery(PayProfitsharingquery payProfitsharingquery,string key){
		Map!(string,string) map = MapUtil.objectToMap(payProfitsharingquery);
		string sign = SignatureUtil.generateSign(map,payProfitsharingquery.getSign_type() == null? "HMAC-SHA256": payProfitsharingquery.getSign_type(),key);
		payProfitsharingquery.setSign(sign);
		string xml = XMLConverUtil.convertToXML(payProfitsharingquery);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/pay/profitsharingquery")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(PayProfitsharingqueryResult), payProfitsharingquery.getSign_type() == null? "HMAC-SHA256": payProfitsharingquery.getSign_type(),key);
	}
	
	/**
	 * 分账-添加分账接收方
	 * @since 2.8.25
	 * @param payProfitsharingOperation payProfitsharingOperation
	 * @param key key
	 * @return MchBaseResult
	 */
	public static MchBaseResult payProfitsharingaddreceiver(PayProfitsharingOperation payProfitsharingOperation,string key){
		Map!(string,string) map = MapUtil.objectToMap(payProfitsharingOperation, "receiver");
		if(payProfitsharingOperation.getReceiver() != null){
			map.put("receiver", JsonUtil.toJSONString(payProfitsharingOperation.getReceiver()));
		}
		string sign = SignatureUtil.generateSign(map,payProfitsharingOperation.getSign_type() == null? "HMAC-SHA256": payProfitsharingOperation.getSign_type(),key);
		payProfitsharingOperation.setSign(sign);
		string xml = XMLConverUtil.convertToXML(payProfitsharingOperation);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/pay/profitsharingaddreceiver")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchBaseResult), payProfitsharingOperation.getSign_type() == null? "HMAC-SHA256": payProfitsharingOperation.getSign_type(),key);
	}
	
	/**
	 * 分账-删除分账接收方
	 * @since 2.8.25
	 * @param payProfitsharingOperation payProfitsharingOperation
	 * @param key key
	 * @return MchBaseResult
	 */
	public static MchBaseResult payProfitsharingremovereceiver(PayProfitsharingOperation payProfitsharingOperation,string key){
		Map!(string,string) map = MapUtil.objectToMap(payProfitsharingOperation, "receiver");
		if(payProfitsharingOperation.getReceiver() != null){
			map.put("receiver", JsonUtil.toJSONString(payProfitsharingOperation.getReceiver()));
		}
		string sign = SignatureUtil.generateSign(map,payProfitsharingOperation.getSign_type() == null? "HMAC-SHA256": payProfitsharingOperation.getSign_type(),key);
		payProfitsharingOperation.setSign(sign);
		string xml = XMLConverUtil.convertToXML(payProfitsharingOperation);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(xmlHeader)
				.setUri(baseURI() + "/pay/profitsharingremovereceiver")
				.setEntity(new StringEntity(xml,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeXmlResult(httpUriRequest,typeid(MchBaseResult), payProfitsharingOperation.getSign_type() == null? "HMAC-SHA256": payProfitsharingOperation.getSign_type(),key);
	}
	
}
