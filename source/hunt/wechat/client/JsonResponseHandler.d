module hunt.wechat.client.JsonResponseHandler;

import hunt.Exceptions;

//import org.apache.http.HttpEntity;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.ClientProtocolException;
//import org.apache.http.client.ResponseHandler;
//import org.apache.http.util.EntityUtils;
import hunt.logger;


import hunt.wechat.util.JsonUtil;

class JsonResponseHandler{


	public static ResponseHandler!(T) createResponseHandler(final Class!(T) clazz){
		return new JsonResponseHandlerImpl!(T)(null,clazz);
	}

	static class JsonResponseHandlerImpl(T) : LocalResponseHandler , ResponseHandler!(T) {
		
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
                HttpEntity entity = response.getEntity();
                string str = EntityUtils.toString(entity,"utf-8");
                logger.info("URI[{}] elapsed time:{} ms RESPONSE DATA:{}",super.uriId,DateTimeHelper.currentTimeMillis()-super.startTime,str);
                return JsonUtil.parseObject(str, clazz);
            } else {
                throw new ClientProtocolException("Unexpected response status: " + status);
            }
		}
		
	}
}
