module hunt.wechat.api.MenuAPI;

import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.menu.Menu;
import hunt.wechat.bean.menu.MenuAddconditionalResult;
import hunt.wechat.bean.menu.MenuButtons;
import hunt.wechat.bean.menu.TrymatchResult;
import hunt.wechat.bean.menu.selfmenu.CurrentSelfmenuInfo;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 菜单API
 * 
 *
 */
class MenuAPI : BaseAPI{

	/**
	 * 创建菜单
	 * @param access_token access_token
	 * @param menuJson 菜单json 数据 例如{\"button\":[{\"type\":\"click\",\"name\":\"今日歌曲\",\"key\":\"V1001_TODAY_MUSIC\"},{\"type\":\"click\",\"name\":\"歌手简介\",\"key\":\"V1001_TODAY_SINGER\"},{\"name\":\"菜单\",\"sub_button\":[{\"type\":\"view\",\"name\":\"搜索\",\"url\":\"http://www.soso.com/\"},{\"type\":\"view\",\"name\":\"视频\",\"url\":\"http://v.qq.com/\"},{\"type\":\"click\",\"name\":\"赞一下我们\",\"key\":\"V1001_GOOD\"}]}]}
	 * @return BaseResult
	 */
	public static BaseResult menuCreate(string access_token,string menuJson){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
										.setHeader(jsonHeader)
										.setUri(BASE_URI+"/cgi-bin/menu/create")
										.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
										.setEntity(new StringEntity(menuJson,Charset.forName("utf-8")))
										.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}

	/**
	 * 创建菜单
	 * @param access_token access_token
	 * @param menuButtons menuButtons
	 * @return BaseResult
	 */
	public static BaseResult menuCreate(string access_token,MenuButtons menuButtons){
		string str = JsonUtil.toJSONString(menuButtons);
		return menuCreate(access_token,str);
	}

	/**
	 * 获取菜单
	 * @param access_token access_token
	 * @return Menu
	 */
	public static Menu menuGet(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
					.setUri(BASE_URI+"/cgi-bin/menu/get")
					.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
					.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(Menu));
	}

	/**
	 * 删除菜单
	 * @param access_token access_token
	 * @return BaseResult
	 */
	public static BaseResult menuDelete(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setUri(BASE_URI+"/cgi-bin/menu/delete")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}


	/**
	 * 获取自定义菜单配置
	 * 本接口将会提供公众号当前使用的自定义菜单的配置，
	 * 如果公众号是通过API调用设置的菜单，则返回菜单的开发配置，
	 * 而如果公众号是在公众平台官网通过网站功能发布菜单，
	 * 则本接口返回运营者设置的菜单配置。
	 * @param access_token access_token
	 * @return CurrentSelfmenuInfo
	 */
	public static CurrentSelfmenuInfo get_current_selfmenu_info(string access_token){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setUri(BASE_URI+"/cgi-bin/get_current_selfmenu_info")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(CurrentSelfmenuInfo));
	}

	/**
	 * 创建个性化菜单
	 * @param access_token access_token
	 * @param menuButtons menuButtons
	 * @return BaseResult
	 */
	public static MenuAddconditionalResult menuAddconditional(string access_token,MenuButtons menuButtons){
		string menuJson = JsonUtil.toJSONString(menuButtons);
		return menuAddconditional(access_token,menuJson);
	}
	
	/**
	 * 创建个性化菜单
	 * @since 2.7.1
	 * @param access_token access_token
	 * @param menuJson menuJson
	 * @return BaseResult
	 */
	public static MenuAddconditionalResult menuAddconditional(string access_token,string menuJson){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/menu/addconditional")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity(menuJson,Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(MenuAddconditionalResult));
	}

	/**
	 * 删除个性化菜单
	 * @param access_token access_token
	 * @param menuid menuid
	 * @return BaseResult
	 */
	public static BaseResult menuDelconditional(string access_token,string menuid){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/menu/delconditional")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity("{\"menuid\":\""+menuid+"\"}",Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(BaseResult));
	}

	/**
	 * 测试个性化菜单匹配结果
	 * @param access_token access_token
	 * @param user_id 可以是粉丝的OpenID，也可以是粉丝的微信号。
	 * @return TrymatchResult
	 */
	public static TrymatchResult menuTrymatch(string access_token,string user_id){
		HttpUriRequest httpUriRequest = RequestBuilder.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI+"/cgi-bin/menu/trymatch")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.setEntity(new StringEntity("{\"user_id\":\""+user_id+"\"}",Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,typeid(TrymatchResult));
	}


}