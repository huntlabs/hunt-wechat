module hunt.wechat.bean.message.templatemessage.TemplateMessageMiniProgram;

/**
 * 发送的微信模板消息、客服消息中带有跳转小程序的信息
 *
 * @author dave.wu
 * @version 2018/1/9
 */
class TemplateMessageMiniProgram {
    private string appid;

    private string pagepath;

    public string getAppid() {
        return appid;
    }

    public void setAppid(string appid) {
        this.appid = appid;
    }

    public string getPagepath() {
        return pagepath;
    }

    public void setPagepath(string pagepath) {
        this.pagepath = pagepath;
    }
}
