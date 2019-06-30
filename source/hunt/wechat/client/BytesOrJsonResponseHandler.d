module hunt.wechat.client.BytesOrJsonResponseHandler;

import hunt.Exceptions;

//import org.apache.http.Header;
//import org.apache.http.HttpEntity;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.ClientProtocolException;
//import org.apache.http.client.ResponseHandler;
//import org.apache.http.entity.ContentType;
//import org.apache.http.util.EntityUtils;
import hunt.logger;


import hunt.wechat.bean.media.MediaGetResult;
import hunt.wechat.util.JsonUtil;

/**
 * 二进制 或 JSON 数据Response处理
 * 
 * 
 *
 */
class BytesOrJsonResponseHandler{


	public static /*<T : MediaGetResult>*/ ResponseHandler!(T) createResponseHandler(final Class!(T) clazz){
		return new BytesOrJsonResponseHandlerImpl!(T)(null,clazz);
	}

	static class BytesOrJsonResponseHandlerImpl(T : MediaGetResult) : LocalResponseHandler , ResponseHandler!(T) {
		
		private Class!(T) clazz;
		
		public this(string uriId, Class!(T) clazz) {
			this.uriId = uriId;
			this.clazz = clazz;
		}

		override
		public T handleResponse(HttpResponse response)
				 {
			int status = response.getStatusLine().getStatusCode();
            if (status >= 200 && status < 300) {
            	ContentType contentType = ContentType.get(response.getEntity());
    			//json data
        		string contentTypeStr = contentType==null?null:contentType.getMimeType();
    			if(contentType != null && 
    				(ContentType.TEXT_PLAIN.getMimeType().equalsIgnoreCase(contentTypeStr)
    				||ContentType.APPLICATION_JSON.getMimeType().equalsIgnoreCase(contentTypeStr))){
    				 HttpEntity entity = response.getEntity();
	                 string str = EntityUtils.toString(entity,"utf-8");
	                 logger.info("URI[{}] elapsed time:{} ms RESPONSE DATA:{}",super.uriId,DateTimeHelper.currentTimeMillis()-super.startTime,str);
	                 return JsonUtil.parseObject(str, clazz);
    			}else{
    				//bytes data
    				try {
						T t = clazz.newInstance();
						MediaGetResult mediaGetResult = cast(MediaGetResult)t;
						Header contentDisposition = response.getFirstHeader("Content-disposition");
						if(contentDisposition != null){
							string filename = contentDisposition.getValue().replaceAll(".*filename=\"(.*)\".*", "$1");
							mediaGetResult.setFilename(filename);
						}
						mediaGetResult.setContentType(contentTypeStr);
						mediaGetResult.setBytes(EntityUtils.toByteArray(response.getEntity()));
						logger.info("URI[{}]ContentType:{} elapsed time:{} ms RESPONSE DATA:{}",super.uriId,contentTypeStr,DateTimeHelper.currentTimeMillis()-super.startTime,"");
						return t;
					} catch (InstantiationException e) {
						// TODO Auto-generated catch block
						logger.error("", e);
					} catch (IllegalAccessException e) {
						// TODO Auto-generated catch block
						logger.error("", e);
					}
    			}
            } else {
                throw new ClientProtocolException("Unexpected response status: " + status);
            }
            return null;
		}
		
	}
}
