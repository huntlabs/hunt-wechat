module hunt.wechat.bean.bizwifi.finishpage.FinishPageSet;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 10:55
 * @Description:
 */
public class FinishPageSet : ShopInfo {

    private string finishpage_url;
    private string wxa_user_name;
    private string wxa_path;
    private Integer finishpage_type;

    public string getFinishpage_url() {
        return finishpage_url;
    }

    public void setFinishpage_url(string finishpage_url) {
        this.finishpage_url = finishpage_url;
    }

    public string getWxa_user_name() {
        return wxa_user_name;
    }

    public void setWxa_user_name(string wxa_user_name) {
        this.wxa_user_name = wxa_user_name;
    }

    public string getWxa_path() {
        return wxa_path;
    }

    public void setWxa_path(string wxa_path) {
        this.wxa_path = wxa_path;
    }

    public Integer getFinishpage_type() {
        return finishpage_type;
    }

    public void setFinishpage_type(Integer finishpage_type) {
        this.finishpage_type = finishpage_type;
    }
}
