module hunt.wechat.api.ComponentAPI;

// import java.io.UnsupportedEncodingException;
// import java.net.URLEncoder;
import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;
import hunt.logging;


import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.component;
import hunt.wechat.client.LocalHttpClient;

/**
 * 公众号第三方平台
 *
 * 
 */
class ComponentAPI : BaseAPI {


    /**
     * 生成授权页 URL
     *
     * @param component_appid 第三方平台ID
     * @param pre_auth_code   预授权码
     * @param redirect_uri    重定向URI
     * @return URL
     */
    public static string componentloginpage(string component_appid, string pre_auth_code, string redirect_uri) {
        return componentloginpage(component_appid, pre_auth_code, redirect_uri, null);
    }

    /**
     * 生成授权页 URL
     *
     * @param component_appid 第三方平台ID
     * @param pre_auth_code   预授权码
     * @param redirect_uri    重定向URI
     * @param auth_type       要授权的帐号类型 
     *                        1 则商户扫码后，手机端仅展示公众号 
     *                        2 表示仅展示小程序 
     *                        3 表示公众号和小程序都展示。
     *                        如果为未制定，则默认小程序和公众号都展示。第三方平台开发者可以使用本字段来控制授权的帐号类型。
     * @return URL
     * @since 2.8.20
     */
    public static string componentloginpage(string component_appid, string pre_auth_code, string redirect_uri, string auth_type) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(MP_URI + "/cgi-bin/componentloginpage?")
                    .append("component_appid=").append(component_appid)
                    .append("&pre_auth_code=").append(pre_auth_code)
                    .append("&redirect_uri=").append(URLEncoder.encode(redirect_uri, "utf-8"));
            if (auth_type != null) {
                sb.append("&auth_type=").append(auth_type);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            logger.error("", e);
        }
        return null;
    }

    /**
     * 生成移动端快速授权URL
     * @since 2.8.22
     * @param component_appid 第三方平台ID
     * @param pre_auth_code   预授权码
     * @param redirect_uri    重定向URI
     * @param auth_type       要授权的帐号类型 
     *                        1 则商户扫码后，手机端仅展示公众号 
     *                        2 表示仅展示小程序 
     *                        3 表示公众号和小程序都展示。
     *                        如果为未制定，则默认小程序和公众号都展示。第三方平台开发者可以使用本字段来控制授权的帐号类型。
     * @return URL
     */
    public static string safeBindcomponent(string component_appid, string pre_auth_code, string redirect_uri, string auth_type) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(MP_URI + "/safe/bindcomponent?")
                    .append("action=").append("bindcomponent")
                    .append("&auth_type=").append(auth_type)
                    .append("&no_scan=").append("1")
                    .append("&component_appid=").append(component_appid)
                    .append("&pre_auth_code=").append(pre_auth_code)
                    .append("&redirect_uri=").append(URLEncoder.encode(redirect_uri, "utf-8"));

            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            logger.error("", e);
            throw new RuntimeException(e);
        }
    }

    /**
     * 获取公众号第三方平台access_token
     *
     * @param component_appid         公众号第三方平台appid
     * @param component_appsecret     公众号第三方平台appsecret
     * @param component_verify_ticket 微信后台推送的ticket，此ticket会定时推送，具体请见本页末尾的推送说明
     * @return 公众号第三方平台access_token
     */
    public static ComponentAccessToken api_component_token(string component_appid, string component_appsecret, string component_verify_ticket) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\" ,\"component_appsecret\": \"%2$s\",\"component_verify_ticket\": \"%3$s\"}",
                component_appid,
                component_appsecret,
                component_verify_ticket);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_component_token")
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(ComponentAccessToken));
    }


    /**
     * 获取预授权码
     *
     * @param component_access_token component_access_token
     * @param component_appid        公众号第三方平台appid
     * @return 预授权码
     */
    public static PreAuthCode api_create_preauthcode(string component_access_token, string component_appid) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\"}",
                component_appid);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_create_preauthcode")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(PreAuthCode));
    }

    /**
     * 使用授权码换取公众号的授权信息
     *
     * @param component_access_token component_access_token
     * @param component_appid        公众号第三方平台appid
     * @param authorization_code     授权code,会在授权成功时返回给第三方平台，详见第三方平台授权流程说明
     * @return 公众号的授权信息
     */
    public static ApiQueryAuthResult api_query_auth(string component_access_token, string component_appid, string authorization_code) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"authorization_code\":\"%2$s\"}",
                component_appid,
                authorization_code);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_query_auth")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(ApiQueryAuthResult));
    }

    /**
     * 获取（刷新）授权公众号的令牌
     *
     * @param component_access_token   component_access_token
     * @param component_appid          公众号第三方平台appid
     * @param authorizer_appid         授权方appid
     * @param authorizer_refresh_token 授权方的刷新令牌，刷新令牌主要用于公众号第三方平台获取和刷新已授权用户的access_token，只会在授权时刻提供，请妥善保存。 一旦丢失，只能让用户重新授权，才能再次拿到新的刷新令牌
     * @return 授权公众号的令牌
     */
    public static AuthorizerAccessToken api_authorizer_token(string component_access_token,
                                                             string component_appid,
                                                             string authorizer_appid,
                                                             string authorizer_refresh_token) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"authorizer_appid\":\"%2$s\",\"authorizer_refresh_token\":\"%3$s\"}",
                component_appid, authorizer_appid, authorizer_refresh_token);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_authorizer_token")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(AuthorizerAccessToken));
    }


    /**
     * 获取授权方的账户信息
     *
     * @param component_access_token component_access_token
     * @param component_appid        服务appid
     * @param authorizer_appid       授权方appid
     * @return 授权方的账户信息
     */
    public static ApiGetAuthorizerInfoResult api_get_authorizer_info(string component_access_token,
                                                                     string component_appid,
                                                                     string authorizer_appid) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"authorizer_appid\":\"%2$s\"}",
                component_appid, authorizer_appid);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_get_authorizer_info")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(ApiGetAuthorizerInfoResult));
    }

    /**
     * 获取授权方的选项设置信息
     *
     * @param component_access_token component_access_token
     * @param component_appid        公众号第三方平台appid
     * @param authorizer_appid       授权公众号appid
     * @param option_name            选项名称
     *                               location_report (地理位置上报选项) 	0	无上报  			1	进入会话时上报  2	每5s上报
     *                               voice_recognize（语音识别开关选项）	0	关闭语音识别		1	开启语音识别
     *                               customer_service（多客服开关选项）	0	关闭多客服		1	开启多客服
     * @return AuthorizerOption
     */
    public static AuthorizerOption api_get_authorizer_option(string component_access_token,
                                                             string component_appid,
                                                             string authorizer_appid,
                                                             string option_name) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"authorizer_appid\":\"%2$s\",\"option_name\":\"%3$s\"}",
                component_appid, authorizer_appid, option_name);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_get_authorizer_option")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(AuthorizerOption));
    }

    /**
     * 设置授权方的选项信息
     *
     * @param component_access_token component_access_token
     * @param component_appid        公众号第三方平台appid
     * @param authorizer_appid       授权公众号appid
     * @param option_name            选项名称
     *                               location_report (地理位置上报选项) 	0	无上报  			1	进入会话时上报  2	每5s上报
     *                               voice_recognize（语音识别开关选项）	0	关闭语音识别		1	开启语音识别
     *                               customer_service（多客服开关选项）	0	关闭多客服		1	开启多客服
     * @param option_value           设置的选项值
     * @return BaseResult
     */
    public static BaseResult api_set_authorizer_option(string component_access_token,
                                                       string component_appid,
                                                       string authorizer_appid,
                                                       string option_name,
                                                       string option_value) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"authorizer_appid\":\"%2$s\",\"option_name\":\"%3$s\",\"option_value\":\"%4$s\"}",
                component_appid, authorizer_appid, option_name, option_value);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_set_authorizer_option")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 第三方平台对其所有API调用次数清零
     *
     * @param component_access_token 调用接口凭据
     * @param component_appid        第三方平台APPID
     * @return result
     * @since 2.8.2
     */
    public static BaseResult clear_quota(string component_access_token, string component_appid) {
        string json = string.format("{\"component_appid\":\"%s\"}", component_appid);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/clear_quota")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(json, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 拉取当前所有已授权的帐号基本信息
     *
     * @param component_access_token component_access_token
     * @param component_appid        第三方平台APPID
     * @param offset                 偏移位置/起始位置
     * @param count                  拉取数量，最大为500
     * @return ApiGetAuthorizerListResult
     */
    public static ApiGetAuthorizerListResult api_get_authorizer_list(string component_access_token, string component_appid, string offset, string count) {
        string postJsonData = string.format("{\"component_appid\":\"%1$s\",\"offset\":\"%2$s\",\"count\":\"%3$s\"}",
                component_appid, offset, count);

        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/component/api_get_authorizer_list")
                .addParameter("component_access_token", API.componentAccessToken(component_access_token))
                .setEntity(new StringEntity(postJsonData, Charset.forName("utf-8")))
                .build();

        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(ApiGetAuthorizerListResult));
    }
}
