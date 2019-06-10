module hunt.wechat.bean.semantic.translatecontent.TranslatecontentResult;

import hunt.wechat.bean.BaseResult;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/25 10:11
 * @Description:
 */
public class TranslatecontentResult : BaseResult {
    private string from_content;
    private string to_content;

    public string getFrom_content() {
        return from_content;
    }

    public void setFrom_content(string from_content) {
        this.from_content = from_content;
    }

    public string getTo_content() {
        return to_content;
    }

    public void setTo_content(string to_content) {
        this.to_content = to_content;
    }
}
