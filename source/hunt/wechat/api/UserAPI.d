module hunt.wechat.api.UserAPI;

import hunt.text.Charset;
import hunt.collection.List;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.user.FollowResult;
import hunt.wechat.bean.user.GetblacklistResult;
import hunt.wechat.bean.user.Group;
import hunt.wechat.bean.user.TagsCreatResult;
import hunt.wechat.bean.user.TagsGetResult;
import hunt.wechat.bean.user.TagsGetidlistResult;
import hunt.wechat.bean.user.User;
import hunt.wechat.bean.user.UserInfoList;
import hunt.wechat.bean.user.UserTagGetResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.EmojiUtil;
import hunt.wechat.util.JsonUtil;

/**
 * User API
 * @author LiYi
 *
 */
public class UserAPI : BaseAPI{

	/**
	 * 获取用户基本信息
	 * @since 2.7.1
	 * @param access_token access_token
	 * @param openid openid
	 * @param emoji 表情解析方式<br>
	 * 0 		  不设置 <br>
	 * 1 HtmlHex 格式<br>
	 * 2 HtmlTag 格式<br>
	 * 3 Alias  格式<br>
	 * 4 HtmlDec 格式<br>
	 * 5 PureText 纯文本<br>
	 * @return User
	 */
	public static User userInfo(string access_token,string openid,int emoji){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI+"/cgi-bin/user/info")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.addParameter("openid",openid)
				.addParameter("lang","zh_CN")
				.build();
		User user = LocalHttpClient.executeJsonResult(httpUriRequest,User.class);
		if(emoji != 0 && user != null && user.getNickname() != null){
			user.setNickname_emoji(EmojiUtil.parse(user.getNickname(), emoji));
		}
		return user;
	}
	
	/**
	 * 获取用户基本信息
	 * @param access_token access_token
	 * @param openid openid
	 * @return User
	 */
	public static User userInfo(string access_token,string openid){
		return userInfo(access_token, openid, 0);
	}

	/**
	 * 获取关注列表
	 * @param access_token access_token
	 * @param next_openid 第一次获取使用null
	 * @return FollowResult
	 */
	public static FollowResult userGet(string access_token,string next_openid){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI+"/cgi-bin/user/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.addParameter("next_openid", next_openid==null?"":next_openid)
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,FollowResult.class);
	}

	/**
	 * 批量获取用户基本信息
	 * @since 2.7.1
	 * @param access_token access_token
	 * @param lang	zh-CN
	 * @param openids 最多支持一次拉取100条
	 * @param emoji 表情解析方式<br>
	 * 0 		  不设置 <br>
	 * 1 HtmlHex 格式<br>
	 * 2 HtmlTag 格式<br>
	 * 3 Alias  格式<br>
	 * 4 HtmlDec 格式<br>
	 * 5 PureText 纯文本<br>
	 * @return UserInfoList
	 */
	public static UserInfoList userInfoBatchget(string access_token,string lang,List<string> openids,int emoji){
		StringBuilder sb = new StringBuilder();
		sb.append("{\"user_list\": [");
		for(int i = 0;i < openids.size();i++){
			sb.append("{")
			  .append("\"openid\": \"").append(openids.get(i)).append("\",")
			  .append("\"lang\": \"").append(lang).append("\"")
			  .append("}").append(i==openids.size()-1?"":",");
		}
		sb.append("]}");
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/user/info/batchget")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(sb.toString(), Charset.forName("utf-8")))
				.build();
		UserInfoList userInfoList = LocalHttpClient.executeJsonResult(httpUriRequest,UserInfoList.class);
		if(emoji != 0 && userInfoList != null && userInfoList.getUser_info_list() != null){
			for(User user : userInfoList.getUser_info_list()){
				if(user.getNickname() != null){
					user.setNickname_emoji(EmojiUtil.parse(user.getNickname(), emoji));
				}
			}
		}
		return userInfoList;
	}
	
	/**
	 * 批量获取用户基本信息
	 * @param access_token access_token
	 * @param lang	zh-CN
	 * @param openids 最多支持一次拉取100条
	 * @return UserInfoList
	 */
	public static UserInfoList userInfoBatchget(string access_token,string lang,List<string> openids){
		return userInfoBatchget(access_token, lang, openids,0);
	}

	/**
	 * 设置备注名
	 * @param access_token access_token
	 * @param openid openid
	 * @param remark remark
	 * @return BaseResult
	 */
	public static BaseResult userInfoUpdateremark(string access_token,string openid,string remark){
		string postJson = string.format("{\"openid\":\"%1$s\",\"remark\":\"%2$s\"}", openid,remark);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/user/info/updateremark")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(postJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}

	/**
	 * 创建分组
	 * @param access_token access_token
	 * @param name name
	 * @return Group
	 */
	public static Group groupsCreate(string access_token,string name){
		string groupJson = string.format("{\"group\":{\"name\":\"%1$s\"}}",name);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/create")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,Group.class);
	}

	/**
	 * 查询所有分组
	 * @param access_token access_token
	 * @return Group
	 */
	public static Group groupsGet(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setUri(BASE_URI+"/cgi-bin/groups/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,Group.class);
	}

	/**
	 * 查询用户所在分组
	 * @param access_token access_token
	 * @param openid openid
	 * @return Group
	 */
	public static Group groupsGetid(string access_token,string openid){
		string groupJson = string.format("{\"openid\":\"%1$s\"}",openid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/getid")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,Group.class);
	}

	/**
	 * 修改分组名
	 * @param access_token access_token
	 * @param id 分组ID
	 * @param name	分组名
	 * @return BaseResult
	 */
	public static BaseResult groupsUpdate(string access_token,string id,string name){
		string groupJson = "{\"group\":{\"id\":"+id+",\"name\":\""+name+"\"}}";
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/update")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}

	/**
	 * 移动用户分组
	 * @param access_token access_token
	 * @param openid openid
	 * @param to_groupid to_groupid
	 * @return BaseResult
	 */
	public static BaseResult groupsMembersUpdate(string access_token,string openid,string to_groupid){
		string groupJson = "{\"openid\":\""+openid+"\",\"to_groupid\":"+to_groupid+"}";
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/members/update")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}


	/**
	 * 批量移动用户分组
	 * @param access_token access_token
	 * @param openid_list openid_list
	 * @param to_groupid to_groupid
	 * @return BaseResult
	 */
	public static BaseResult groupsMembersBatchUpdate(string access_token,List<string> openid_list,string to_groupid){
		string openidListStr = JsonUtil.toJSONString(openid_list);
		string groupJson = "{\"openid_list\":"+openidListStr+",\"to_groupid\":"+to_groupid+"}";
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/members/batchupdate")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}

	/**
	 * 删除分组
	 * @param access_token access_token
	 * @param id id
	 * @return BaseResult
	 */
	public static BaseResult groupsDelete(string access_token,string id){
		string groupJson = string.format("{\"group\":{\"id\":%1$s}}",id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/groups/delete")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(groupJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}

	/**
	 * 标签管理 创建标签<br>
	 * 一个公众号，最多可以创建100个标签。
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param name name	标签名长度超过30个字节
	 * @return result
	 */
	public static TagsCreatResult tagsCreate(string access_token,string name){
		string json = string.format("{\"tag\":{\"name\":\"%s\"}}",name);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/create")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,TagsCreatResult.class);
	}
	
	/**
	 * 标签管理 获取公众号已创建的标签
	 * @since 2.8.1
	 * @param access_token access_token
	 * @return result
	 */
	public static TagsGetResult tagsGet(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI+"/cgi-bin/tags/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,TagsGetResult.class);
	}
	
	/**
	 * 标签管理 编辑标签
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param id id
	 * @param name name	标签名长度超过30个字节
	 * @return result
	 */
	public static BaseResult tagsUpdate(string access_token,Integer id,string name){
		string json = string.format("{\"tag\":{\"id\":%d,\"name\":\"%s\"}}",id,name);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/update")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 标签管理 删除标签<br>
	 * 请注意，当某个标签下的粉丝超过10w时，后台不可直接删除标签。<br>
	 * 此时，开发者可以对该标签下的openid列表，先进行取消标签的操作，直到粉丝数不超过10w后，才可直接删除该标签。
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param id id
	 * @return result
	 */
	public static BaseResult tagsDelete(string access_token,Integer id){
		string json = string.format("{\"tag\":{\"id\":%d}}",id);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/delete")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 标签管理 获取标签下粉丝列表
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param tagid tagid
	 * @param next_openid 第一个拉取的OPENID，不填默认从头开始拉取
	 * @return result
	 */
	public static UserTagGetResult userTagGet(string access_token,Integer tagid,string next_openid){
		string json = string.format("{\"tagid\":%d,\"next_openid\":\"%s\"}",tagid,next_openid==null?"":next_openid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/user/tag/get")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,UserTagGetResult.class);
	}
	
	/**
	 * 用户管理 批量为用户打标签<br>
	 * 标签功能目前支持公众号为用户打上最多20个标签。
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param tagid	tagid
	 * @param openids openids
	 * @return result
	 */
	public static BaseResult tagsMembersBatchtagging(string access_token,Integer tagid,string[] openids){
		string json = string.format("{\"tagid\":%d,\"openid_list\":%s}",tagid,JsonUtil.toJSONString(openids));
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/members/batchtagging")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 用户管理 批量为用户取消标签
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param tagid	tagid
	 * @param openids openids
	 * @return result
	 */
	public static BaseResult tagsMembersBatchuntagging(string access_token,Integer tagid,string[] openids){
		string json = string.format("{\"tagid\":%d,\"openid_list\":%s}",tagid,JsonUtil.toJSONString(openids));
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/members/batchuntagging")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 用户管理 获取用户身上的标签列表
	 * @since 2.8.1
	 * @param access_token access_token
	 * @param openid openid
	 * @return result
	 */
	public static TagsGetidlistResult tagsGetidlist(string access_token,string openid){
		string json = string.format("{\"openid\":\"%s\"}",openid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/getidlist")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,TagsGetidlistResult.class);
	}
	
	/**
	 * 黑名单管理	获取公众号的黑名单列表<br>
	 * 该接口每次调用最多可拉取 10000 个OpenID，当列表数较多时，可以通过多次拉取的方式来满足需求。
	 * @since 2.8.1
	 * @param access_token	access_token
	 * @param begin_openid	当 begin_openid 为空时，默认从开头拉取。
	 * @return result
	 */
	public static GetblacklistResult tagsMembersGetblacklist(string access_token,string begin_openid){
		string json = string.format("{\"begin_openid\":\"%s\"}",begin_openid == null?"":begin_openid);
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/members/getblacklist")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,GetblacklistResult.class);
	}
	
	/**
	 * 黑名单管理	拉黑用户
	 * @since 2.8.1
	 * @param access_token	access_token
	 * @param openid_list	需要拉入黑名单的用户的openid，一次拉黑最多允许20个
	 * @return result
	 */
	public static BaseResult tagsMembersBatchblacklist(string access_token,string[] openid_list){
		string json = string.format("{\"openid_list\":%s}",JsonUtil.toJSONString(openid_list));
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/members/batchblacklist")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
	/**
	 * 黑名单管理	取消拉黑用户
	 * @since 2.8.1
	 * @param access_token	access_token
	 * @param openid_list	需要取消拉入黑名单的用户的openid，一次取消拉黑最多允许20个
	 * @return result
	 */
	public static BaseResult tagsMembersBatchunblacklist(string access_token,string[] openid_list){
		string json = string.format("{\"openid_list\":%s}",JsonUtil.toJSONString(openid_list));
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/tags/members/batchunblacklist")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(json,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,BaseResult.class);
	}
	
}
