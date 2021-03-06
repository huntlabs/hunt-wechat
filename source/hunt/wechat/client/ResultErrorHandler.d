module hunt.wechat.client.ResultErrorHandler;

//import org.apache.http.HttpEntity;
//import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.entity.ContentType;
//import org.apache.http.util.EntityUtils;
import hunt.logging;


import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.paymch.MchBase;
import hunt.wechat.util.JsonUtil;

/**
 * 返回数据错误处理
 * 
 * @since 2.8.3
 * 
 *
 */
abstract class ResultErrorHandler {
	

	/**
	 * 数据错误检查
	 * @param result 返回数据
	 * @return bool
	 */
	private bool isError(Object result) {
		if(result != null){
			if(cast(BaseResult)(result) !is null){
				BaseResult baseResult = cast(BaseResult)result;
				return !baseResult.isSuccess();
			}else if(cast(MchBase)(result) !is null){
				MchBase mchBase = cast(MchBase)result;
				if("FAIL".equalsIgnoreCase(mchBase.getReturn_code())||
				   "FAIL".equalsIgnoreCase(mchBase.getResult_code())){
					return true;
				}
			}
		}
		return false;
	}
	
	protected void doHandle(string uriId,HttpUriRequest request,Object result){
		if(this.isError(result)){
			string content = null;
			if(cast(HttpEntityEnclosingRequestBase)(request) !is null){
				HttpEntityEnclosingRequestBase request_base = cast(HttpEntityEnclosingRequestBase)(request);
				HttpEntity entity = request_base.getEntity();
				//MULTIPART_FORM_DATA 请求类型判断
				if(entity.getContentType().toString().indexOf(ContentType.MULTIPART_FORM_DATA.getMimeType()) == -1){
					try {
						content = EntityUtils.toString(entity);
					} catch (Exception e) {
						logger.error("", e);
					}
				}
				if(logger.isErrorEnabled()){
					logger.error("URI[{}] {} Content:{} Result:{}",
							uriId,
							request.getURI(),
							content == null ? "multipart_form_data" : content,
							result == null? null : JsonUtil.toJSONString(result));
				}
			}
			this.handle(uriId,request.getURI().toString(),content,result);
		}
	}
	
	/**
	 * 数据错误处理
	 * @param uriId	uriId
	 * @param uri	uri
	 * @param requestEntity 请求entity数据
	 * @param result 返回的数据
	 */
	protected abstract void handle(string uriId,string uri,string requestEntity,Object result);
}
