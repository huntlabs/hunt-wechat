module hunt.wechat.api.MessageAPI;

import hunt.text.Charset;
import hunt.collection.LinkedHashMap;
import hunt.collection.List;
import hunt.collection.Map;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.media.Media;
import hunt.wechat.bean.message.ApiAddTemplateResult;
import hunt.wechat.bean.message.Article;
import hunt.wechat.bean.message.CurrentAutoreplyInfo;
import hunt.wechat.bean.message.GetAllPrivateTemplateResult;
import hunt.wechat.bean.message.GetIndustryResult;
import hunt.wechat.bean.message.MessageSendResult;
import hunt.wechat.bean.message.Uploadvideo;
import hunt.wechat.bean.message.massmessage.MassMessage;
import hunt.wechat.bean.message.message.Message;
import hunt.wechat.bean.message.preview.Preview;
import hunt.wechat.bean.message.templatemessage.TemplateMessage;
import hunt.wechat.bean.message.templatemessage.TemplateMessageResult;
import hunt.wechat.bean.message.templatemessage.WxopenTemplateMessage;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 当用户主动发消息给公众号的时候
 * （包括发送信息、点击自定义菜单click事件、订阅事件、扫描二维码事件、支付成功事件、用户维权），
 * 微信将会把消息数据推送给开发者，
 * 开发者在一段时间内（目前修改为48小时）可以调用客服消息接口，
 * 通过POST一个JSON数据包来发送消息给普通用户，
 * 在48小时内不限制发送次数。
 * 此接口主要用于客服等有人工消息处理环节的功能，方便开发者为用户提供更加优质的服务。
 *
 * 
 */
class MessageAPI : BaseAPI {


    /**
     * 消息发送
     *
     * @param access_token access_token
     * @param messageJson  messageJson
     * @return BaseResult
     */
    public static BaseResult messageCustomSend(string access_token, string messageJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/custom/send")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 消息发送
     *
     * @param access_token access_token
     * @param message      message
     * @return BaseResult
     */
    public static BaseResult messageCustomSend(string access_token, Message message) {
        string str = JsonUtil.toJSONString(message);
        return messageCustomSend(access_token, str);
    }
    
    /**
     * 客服输入状态
     * @param access_token access_token
     * @param touser touser
     * @param command 
     *  "Typing"：对用户下发“正在输入"状态  
     *  "CancelTyping"：取消对用户的”正在输入"状态
     * @return BaseResult
     */
    public static BaseResult messageCustomTyping(string access_token, string touser, string command) {
    	string json = string.format("{\"touser\":\"%s\",\"command\":\"%s\"}", touser, command);
    	HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/custom/typing")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(json, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 高级群发 构成 MassMPnewsMessage 对象的前置请求接口
     *
     * @param access_token access_token
     * @param articles     图文信息 1-10 个
     * @return Media
     */
    public static Media mediaUploadnews(string access_token, List!(Article) articles) {
        return MediaAPI.mediaUploadnews(access_token, articles);
    }

    /**
     * 高级群发 构成 MassMPnewsMessage 对象的前置请求接口
     *
     * @param access_token access_token
     * @param messageJson  messageJson
     * @return result
     */
    public static Media mediaUploadnews(string access_token, string messageJson) {
        return MediaAPI.mediaUploadnews(access_token, messageJson);
    }

    /**
     * 高级群发 构成 MassMPvideoMessage 对象的前置请求接口
     *
     * @param access_token access_token
     * @param uploadvideo  uploadvideo
     * @return Media
     */
    public static Media mediaUploadvideo(string access_token, Uploadvideo uploadvideo) {
        return MediaAPI.mediaUploadvideo(access_token, uploadvideo);
    }

    /**
     * 高级群发接口 根据 分组或标签 进行群发
     *
     * @param access_token access_token
     * @param messageJson  messageJson
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassSendall(string access_token, string messageJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/mass/sendall")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(MessageSendResult));
    }

    /**
     * 高级群发接口 根据 分组或标签  进行群发
     *
     * @param access_token access_token
     * @param massMessage  massMessage
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassSendall(string access_token, MassMessage massMessage) {
        string str = JsonUtil.toJSONString(massMessage);
        return messageMassSendall(access_token, str);
    }


    /**
     * 高级群发接口 根据OpenID列表群发
     *
     * @param access_token access_token
     * @param messageJson  messageJson
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassSend(string access_token, string messageJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/mass/send")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(MessageSendResult));
    }

    /**
     * 高级群发接口 根据OpenID列表群发
     *
     * @param access_token access_token
     * @param massMessage  massMessage
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassSend(string access_token, MassMessage massMessage) {
        string str = JsonUtil.toJSONString(massMessage);
        return messageMassSend(access_token, str);
    }


    /**
     * 高级群发接口	删除群发 
     * 1、只有已经发送成功的消息才能删除
     * 2、删除消息是将消息的图文详情页失效，已经收到的用户，还是能在其本地看到消息卡片。
     * 3、删除群发消息只能删除图文消息和视频消息，其他类型的消息一经发送，无法删除。
     * 4、如果多次群发发送的是一个图文消息，那么删除其中一次群发，就会删除掉这个图文消息也，导致所有群发都失效
     *
     * @param access_token access_token
     * @param msg_id       msg_id
     * @return BaseResult
     */
    public static BaseResult messageMassDelete(string access_token, string msg_id) {
        return messageMassDelete(access_token, msg_id, 0);
    }

    /**
     * 高级群发接口	删除群发 
     * 1、只有已经发送成功的消息才能删除
     * 2、删除消息是将消息的图文详情页失效，已经收到的用户，还是能在其本地看到消息卡片。
     * 3、删除群发消息只能删除图文消息和视频消息，其他类型的消息一经发送，无法删除。
     * 4、如果多次群发发送的是一个图文消息，那么删除其中一次群发，就会删除掉这个图文消息也，导致所有群发都失效
     *
     * @param access_token access_token
     * @param msg_id       msg_id
     * @param article_idx  要删除的文章在图文消息中的位置，第一篇编号为1，该字段不填或填0会删除全部文章
     * @return BaseResult
     */
    public static BaseResult messageMassDelete(string access_token, string msg_id, Integer article_idx) {
        string messageJson = string.format("{\"msg_id\":\"%s\",\"article_idx\":%d}", msg_id, article_idx);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/mass/delete")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 预览接口
     *
     * @param access_token access_token
     * @param preview      preview
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassPreview(string access_token, Preview preview) {
        string previewJson = JsonUtil.toJSONString(preview);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/mass/preview")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(previewJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(MessageSendResult));
    }

    /**
     * 查询群发消息发送状态
     *
     * @param access_token access_token
     * @param msg_id       msg_id
     * @return MessageSendResult
     */
    public static MessageSendResult messageMassGet(string access_token, string msg_id) {
        string messageJson = string.format("{\"msg_id\":\"%s\"}", msg_id);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/mass/get")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(MessageSendResult));
    }


    /**
     * 模板消息发送
     * <p>
     * <a href="https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1433751277">微信模板消息文档</a>
     *
     * @param access_token    access_token
     * @param templateMessage templateMessage
     * @return TemplateMessageResult
     */
    public static TemplateMessageResult messageTemplateSend(string access_token, TemplateMessage templateMessage) {
        string messageJson = JsonUtil.toJSONString(templateMessage);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/template/send")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(TemplateMessageResult));
    }

    /**
     * 模板消息发送（微信小程序）
     *
     * @param access_token    access_token
     * @param templateMessage templateMessage
     * @return result
     */
    public static BaseResult messageWxopenTemplateSend(string access_token, WxopenTemplateMessage templateMessage) {
        string messageJson = JsonUtil.toJSONString(templateMessage);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/message/wxopen/template/send")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 模板消息 设置所属行业
     *
     * @param access_token access_token
     * @param industrys    行业值，暂设置个数限制为2个。
     *                     <p>
     *                     主行业	副行业	代码	   
     *                     IT科技	互联网/电子商务	1 
     *                     IT科技	IT软件与服务	2 
     *                     IT科技	IT硬件与设备	3 
     *                     IT科技	电子技术	4 
     *                     IT科技	通信与运营商	5 
     *                     IT科技	网络游戏	6 
     *                     金融业	银行	7 
     *                     金融业	基金|理财|信托	8 
     *                     金融业	保险	9 
     *                     餐饮	餐饮	10 
     *                     酒店旅游	酒店	11 
     *                     酒店旅游	旅游	12 
     *                     运输与仓储	快递	13 
     *                     运输与仓储	物流	14 
     *                     运输与仓储	仓储	15 
     *                     教育	培训	16 
     *                     教育	院校	17 
     *                     政府与公共事业	学术科研	18 
     *                     政府与公共事业	交警	19 
     *                     政府与公共事业	博物馆	20 
     *                     政府与公共事业	公共事业|非盈利机构	21 
     *                     医药护理	医药医疗	22 
     *                     医药护理	护理美容	23 
     *                     医药护理	保健与卫生	24 
     *                     交通工具	汽车相关	25 
     *                     交通工具	摩托车相关	26 
     *                     交通工具	火车相关	27 
     *                     交通工具	飞机相关	28 
     *                     房地产	建筑	29 
     *                     房地产	物业	30 
     *                     消费品	消费品	31 
     *                     商业服务	法律	32 
     *                     商业服务	会展	33 
     *                     商业服务	中介服务	34 
     *                     商业服务	认证	35 
     *                     商业服务	审计	36 
     *                     文体娱乐	传媒	37 
     *                     文体娱乐	体育	38 
     *                     文体娱乐	娱乐休闲	39 
     *                     印刷	印刷	40 
     *                     其它	其它	41 
     * @return BaseResult
     */
    public static BaseResult templateApi_set_industry(string access_token, string[] industrys...) {
        Map!(string, string) map = new LinkedHashMap!(string, string)();
        for (int i = 1; i <= industrys.length; i++) {
            map.put("industry_id" + i, industrys[i - 1]);
        }
        string messageJson = JsonUtil.toJSONString(map);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/template/api_set_industry")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(messageJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 获取设置的行业信息
     *
     * @param access_token access_token
     * @return GetIndustryResult
     */
    public static GetIndustryResult templateGet_industry(string access_token) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setUri(BASE_URI + "/cgi-bin/template/get_industry")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(GetIndustryResult));
    }

    /**
     * 模板消息 获得模板ID
     *
     * @param access_token      access_token
     * @param template_id_short template_id_short
     * @return ApiAddTemplateResult
     */
    public static ApiAddTemplateResult templateApi_add_template(string access_token, string template_id_short) {
        string json = string.format("{\"template_id_short\":\"%s\"}", template_id_short);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/template/api_add_template")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(json, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(ApiAddTemplateResult));
    }

    /**
     * 模板消息 获取模板列表
     *
     * @param access_token access_token
     * @return GetAllPrivateTemplateResult
     */
    public static GetAllPrivateTemplateResult templateGet_all_private_template(string access_token) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setUri(BASE_URI + "/cgi-bin/template/get_all_private_template")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(GetAllPrivateTemplateResult));
    }

    /**
     * 模板消息 删除模板
     *
     * @param access_token access_token
     * @param template_id  template_id
     * @return BaseResult
     */
    public static BaseResult templateDel_private_template(string access_token, string template_id) {
        string json = string.format("{\"template_id\":\"%s\"}", template_id);
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/cgi-bin/template/del_private_template")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .setEntity(new StringEntity(json, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(BaseResult));
    }

    /**
     * 获取公众号的自动回复规则
     *
     * @param access_token access_token
     * @return CurrentAutoreplyInfo
     */
    public static CurrentAutoreplyInfo get_current_autoreply_info(string access_token) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setUri(BASE_URI + "/cgi-bin/get_current_autoreply_info")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest, typeid(CurrentAutoreplyInfo));
    }

}
