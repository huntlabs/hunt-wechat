module hunt.wechat.client.LocalHttpClient;

import std.file;
import hunt.io.FileInputStream;
import hunt.Exceptions;
import hunt.io.Common;
// import java.security.KeyStore;
import hunt.collection.Map;
// import java.util.UUID;
// import java.util.concurrent.ConcurrentHashMap;

//import org.apache.http.Header;
//import org.apache.http.HttpEntity;
//import org.apache.http.HttpHeaders;
//import org.apache.http.client.ResponseHandler;
//import org.apache.http.client.methods.CloseableHttpResponse;
//import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.protocol.HttpClientContext;
//import org.apache.http.entity.ContentType;
//import org.apache.http.impl.client.CloseableHttpClient;
//import org.apache.http.message.BasicHeader;
//import org.apache.http.util.EntityUtils;
import hunt.logging;


import hunt.wechat.Version;

class LocalHttpClient {
	
	
	private static int timeout = 8000;
	
	private static int retryExecutionCount = 2;

	protected static CloseableHttpClient httpClient = HttpClientFactory.createHttpClient(100,10,timeout,retryExecutionCount);

	private static Map!(string,CloseableHttpClient) httpClient_mchKeyStore = new ConcurrentHashMap!(string, CloseableHttpClient)();
	
	private static ResultErrorHandler resultErrorHandler;
	
	protected static final Header userAgentHeader = new BasicHeader(HttpHeaders.USER_AGENT,"weixin-popular sdk java v" + Version.VERSION);
	
	/**
	 * @since 2.7.0
	 * @param timeout timeout
	 */
	public static void setTimeout(int timeout) {
		LocalHttpClient.timeout = timeout;
	}

	/**
	 * @since 2.7.0
	 * @param retryExecutionCount retryExecutionCount
	 */
	public static void setRetryExecutionCount(int retryExecutionCount) {
		LocalHttpClient.retryExecutionCount = retryExecutionCount;
	}
	
	/**
	 * @since 2.8.3
	 * @param resultErrorHandler 数据返回错误处理
	 */
	public static void setResultErrorHandler(ResultErrorHandler resultErrorHandler) {
		LocalHttpClient.resultErrorHandler = resultErrorHandler;
	}

	/**
	 * 
	 * @param maxTotal maxTotal
	 * @param maxPerRoute maxPerRoute
	 */
	public static void init(int maxTotal,int maxPerRoute){
		try {
			httpClient.close();
		} catch (IOException e) {
			logger.error("init error", e);
		}
		httpClient = HttpClientFactory.createHttpClient(maxTotal,maxPerRoute,timeout,retryExecutionCount);
	}

	/**
	 * 初始化   MCH HttpClient KeyStore
	 * @param mch_id mch_id
	 * @param keyStoreFilePath keyStoreFilePath
	 */
	public static void initMchKeyStore(string mch_id,string keyStoreFilePath){
		try {
			initMchKeyStore(mch_id, new FileInputStream(new File(keyStoreFilePath)));
		} catch (FileNotFoundException e) {
			logger.error("init error", e);
		}
	}
	
	/**
	 * 初始化   MCH HttpClient KeyStore
	 * @since 2.8.7
	 * @param mch_id mch_id
	 * @param inputStream p12 文件流
	 */
	public static void initMchKeyStore(string mch_id, InputStream inputStream) {
		try {
			 KeyStore keyStore = KeyStore.getInstance("PKCS12");
			 keyStore.load(inputStream,mch_id.toCharArray());
			 inputStream.close();
			 CloseableHttpClient httpClient = HttpClientFactory.createKeyMaterialHttpClient(keyStore, mch_id,timeout,retryExecutionCount);
			 httpClient_mchKeyStore.put(mch_id, httpClient);
		} catch (Exception e) {
			logger.error("init mch error", e);
		}
	}


	public static CloseableHttpResponse execute(HttpUriRequest request){
		loggerRequest(request);
		userAgent(request);
		try {
			return httpClient.execute(request,HttpClientContext.create());
		} catch (Exception e) {
			logger.error("execute error", e);
		}
		return null;
	}

	public static T execute(HttpUriRequest request,ResponseHandler!(T) responseHandler){
		string uriId = loggerRequest(request);
		userAgent(request);
		if(cast(LocalResponseHandler)(responseHandler) !is null){
			LocalResponseHandler lrh = cast(LocalResponseHandler) responseHandler;
			lrh.setUriId(uriId);
		}
		try {
			T t = httpClient.execute(request, responseHandler,HttpClientContext.create());
			if(resultErrorHandler != null){
				resultErrorHandler.doHandle(uriId, request, t);
			}
			return t;
		} catch (Exception e) {
			logger.error("execute error", e);
		}
		return null;
	}
	
	

	/**
	 * 数据返回自动JSON对象解析
	 * @param request request
	 * @param clazz clazz
	 * @param <T> T
	 * @return result
	 */
	public static  T executeJsonResult(HttpUriRequest request,Class!(T) clazz){
		return execute(request,JsonResponseHandler.createResponseHandler(clazz));
	}

	/**
	 * 数据返回自动XML对象解析
	 * @param request request
	 * @param clazz clazz
	 * @param <T> T
	 * @return result
	 */
	public static  T executeXmlResult(HttpUriRequest request,Class!(T) clazz){
		return execute(request,XmlResponseHandler.createResponseHandler(clazz));
	}
	
	/**
	 * 数据返回自动XML对象解析
	 * @param request request
	 * @param clazz clazz
	 * @param sign_type 数据返回验证签名类型
	 * @param key 数据返回验证签名key
	 * @param <T> T
	 * @return result
	 * @since 2.8.5
	 */
	public static T executeXmlResult(HttpUriRequest request,Class!(T) clazz,string sign_type,string key){
		return execute(request,XmlResponseHandler.createResponseHandler(clazz,sign_type,key));
	}

	/**
	 * MCH keyStore 请求 数据返回自动XML对象解析
	 * @param mch_id mch_id
	 * @param request request
	 * @param clazz clazz
	 * @param <T> T
	 * @return result
	 */
	public static  T keyStoreExecuteXmlResult(string mch_id,HttpUriRequest request,Class!(T) clazz){
		return keyStoreExecuteXmlResult(mch_id, request, clazz, null,null);
	}
	
	/**
	 * 
	 * @param mch_id mch_id
	 * @param request request
	 * @param clazz clazz
	 * @param sign_type 数据返回验证签名类型
	 * @param key 数据返回验证签名key
	 * @param <T> T
	 * @since 2.8.5
	 * @return result
	 */
	public static  T keyStoreExecuteXmlResult(string mch_id,HttpUriRequest request,Class!(T) clazz,string sign_type,string key){
		return keyStoreExecute(mch_id, request, XmlResponseHandler.createResponseHandler(clazz, sign_type, key));
	}
	
	public static  T keyStoreExecute(string mch_id,HttpUriRequest request,ResponseHandler!(T) responseHandler){
		string uriId = loggerRequest(request);
		userAgent(request);
		if(cast(LocalResponseHandler)(responseHandler) !is null){
			LocalResponseHandler lrh = cast(LocalResponseHandler)(responseHandler);
			lrh.setUriId(uriId);
		}
		try {
			T t = httpClient_mchKeyStore.get(mch_id).execute(request,responseHandler,HttpClientContext.create());
			if(resultErrorHandler != null){
				resultErrorHandler.doHandle(uriId, request, t);
			}
			return t;
		} catch (Exception e) {
			logger.error("execute error", e);
		}
		return null;
	}
	
	/**
	 * 日志记录
	 * @param request request
	 * @return log request id
	 */
	private static string loggerRequest(HttpUriRequest request){
		string id = UUID.randomUUID().toString();
		if(logger.isInfoEnabled()||logger.isDebugEnabled()){
			if(cast(HttpEntityEnclosingRequestBase)(request) !is null){
				HttpEntityEnclosingRequestBase request_base = cast(HttpEntityEnclosingRequestBase)(request);
				HttpEntity entity = request_base.getEntity();
				string content = null;
				//MULTIPART_FORM_DATA 请求类型判断
				if(entity.getContentType().toString().indexOf(ContentType.MULTIPART_FORM_DATA.getMimeType()) == -1){
					try {
						content = EntityUtils.toString(entity);
					} catch (Exception e) {
						logger.error("logger content data get error", e);
					}
				}
				logger.info("URI[{}] {} {} ContentLength:{} Content:{}",
			    id,
				request.getURI().toString(),
				entity.getContentType(),
				entity.getContentLength(),
				content == null?"multipart_form_data":content);
			}else{
				logger.info("URI[{}] {}",id,request.getURI().toString());
			}
		}
		return id;
	}
	
	private static void userAgent(HttpUriRequest httpUriRequest){
		httpUriRequest.addHeader(userAgentHeader);
	}
}
