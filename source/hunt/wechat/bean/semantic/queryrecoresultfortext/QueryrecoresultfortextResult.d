module hunt.wechat.bean.semantic.queryrecoresultfortext.QueryrecoresultfortextResult;

import hunt.wechat.bean.BaseResult;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/25 10:11
 * @Description:
 */
class QueryrecoresultfortextResult : BaseResult {
    private string result;

    public string getResult() {
        return result;
    }

    public void setResult(string result) {
        this.result = result;
    }
}
