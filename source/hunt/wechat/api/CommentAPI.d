module hunt.wechat.api.CommentAPI;

import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.comment.CommentList;
import hunt.wechat.bean.comment.CommentListResult;
import hunt.wechat.bean.comment.Params;
import hunt.wechat.bean.comment.ReplyAdd;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 图文消息留言管理接口
 * @author LiYi
 */
class CommentAPI : BaseAPI{


	/**
	 * 打开已群发文章评论
	 * @param access_token access_token
	 * @param msg_data_id 群发返回的msg_data_id
	 * @param index 多图文时，用来指定第几篇图文，从0开始，不带默认操作该msg_data_id的第一篇图文
	 * @return BaseResult BaseResult
	 */
	public static BaseResult open(string access_token,Long msg_data_id,Integer index){
		string json = string.format("{\"msg_data_id\":%d,\"index\":%d}",msg_data_id,index == null?0:index);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/open")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}

	/**
	 * 关闭已群发文章评论
	 * @param access_token access_token
	 * @param msg_data_id 群发返回的msg_data_id
	 * @param index 多图文时，用来指定第几篇图文，从0开始，不带默认操作该msg_data_id的第一篇图文
	 * @return BaseResult BaseResult
	 */
	public static BaseResult close(string access_token,Long msg_data_id,Integer index){
		string json = string.format("{\"msg_data_id\":%d,\"index\":%d}",msg_data_id,index == null?0:index);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/close")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 查看指定文章的评论数据
	 * @param access_token access_token
	 * @param commentList commentList
	 * @return CommentListResult CommentListResult
	 */
	public static CommentListResult list(string access_token,CommentList commentList){
		string json = JsonUtil.toJSONString(commentList);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/list")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,CommentListResult.class);
	}
	
	/**
	 * 将评论标记精选
	 * @param access_token access_token
	 * @param markelect markelect
	 * @return BaseResult BaseResult
	 */
	public static BaseResult markelect(string access_token,Params markelect){
		string json = JsonUtil.toJSONString(markelect);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/markelect")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 将评论取消精选
	 * @param access_token access_token
	 * @param unmarkelect unmarkelect
	 * @return BaseResult BaseResult
	 */
	public static BaseResult unmarkelect(string access_token,Params unmarkelect){
		string json = JsonUtil.toJSONString(unmarkelect);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/unmarkelect")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 删除评论
	 * @param access_token access_token
	 * @param delete delete
	 * @return BaseResult BaseResult
	 */
	public static BaseResult delete(string access_token,Params delete){
		string json = JsonUtil.toJSONString(delete);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/delete")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 回复评论
	 * @param access_token access_token
	 * @param replyAdd replyAdd
	 * @return BaseResult BaseResult
	 */
	public static BaseResult replyAdd(string access_token,ReplyAdd replyAdd){
		string json = JsonUtil.toJSONString(replyAdd);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/reply/add")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 删除回复
	 * @param access_token access_token
	 * @param delete delete
	 * @return BaseResult BaseResult
	 */
	public static BaseResult replyDelete(string access_token,Params delete){
		string json = JsonUtil.toJSONString(delete);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/comment/reply/delete")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
}
