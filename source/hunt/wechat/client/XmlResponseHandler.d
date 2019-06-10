module hunt.wechat.client.XmlResponseHandler;

import hunt.Exceptions;
import hunt.collection.Map;

//import org.apache.http.Header;
//import org.apache.http.HttpEntity;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.ClientProtocolException;
//import org.apache.http.client.ResponseHandler;
//import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import hunt.wechat.bean.DynamicField;
import hunt.wechat.bean.paymch.MchBase;
import hunt.wechat.util.SignatureUtil;
import hunt.wechat.util.XMLConverUtil;

public class XmlResponseHandler{
	
	private static Logger logger = LoggerFactory.getLogger(XmlResponseHandler.class);

	public static <T> ResponseHandler<T> createResponseHandler(Class<T> clazz){
		return new XmlResponseHandlerImpl<T>(null, clazz,null,null);
	}
	
	public static <T> ResponseHandler<T> createResponseHandler(Class<T> clazz,string sign_type,string key){
		return new XmlResponseHandlerImpl<T>(null, clazz,sign_type,key);
	}

	public static class XmlResponseHandlerImpl<T> : LocalResponseHandler : ResponseHandler<T> {
		
		private Class<T> clazz;
		
		private string sign_type;
		
		//签名校验key
		private string key;
		
		public XmlResponseHandlerImpl(string uriId, Class<T> clazz,string sign_type,string key) {
			this.uriId = uriId;
			this.clazz = clazz;
			this.sign_type = sign_type;
			this.key = key;
		}

		override
		public T handleResponse(HttpResponse response)
				throws ClientProtocolException, IOException {
			int status = response.getStatusLine().getStatusCode();
            if (status >= 200 && status < 300) {
                HttpEntity entity = response.getEntity();
                string str = EntityUtils.toString(entity);
                Header contentType = response.getEntity().getContentType();
                if(contentType!=null&&!contentType.toString().matches(".*[uU][tT][fF]-8$")){
                	str = new string(str.getBytes("iso-8859-1"),"utf-8");
                }
                logger.info("URI[{}] elapsed time:{} ms RESPONSE DATA:{}",super.uriId,System.currentTimeMillis()-super.startTime,str);
            	T t = XMLConverUtil.convertToObject(clazz,str);
            	if(t instanceof DynamicField ||(t instanceof MchBase && key != null)){
            		Map<string,string> map = XMLConverUtil.convertToMap(str);
            		//转换动态属性 @since 2.8.5
            		if(t instanceof DynamicField){
	            		DynamicField dynamicField = (DynamicField)t;
	            		dynamicField.buildDynamicField(map);
            		}
            		
            		//返回数据验证签名 @since 2.8.5
            		if((t instanceof MchBase && key != null)){
            			MchBase mchBase = (MchBase)t;
            			mchBase.setSign_status(SignatureUtil.validateSign(map,sign_type,key));
            		}
            	}
            	return t;
            } else {
                throw new ClientProtocolException("Unexpected response status: " + status);
            }

		}
		
		
	}
}
