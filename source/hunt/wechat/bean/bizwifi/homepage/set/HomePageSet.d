module hunt.wechat.bean.bizwifi.homepage.set.HomePageSet;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 11:11
 * @Description:
 */
public class HomePageSet : ShopInfo {

    private Integer template_id;
    private Struct struct;

    public Integer getTemplate_id() {
        return template_id;
    }

    public void setTemplate_id(Integer template_id) {
        this.template_id = template_id;
    }

    public Struct getStruct() {
        return struct;
    }

    public void setStruct(Struct struct) {
        this.struct = struct;
    }

    public static class Struct {
        private string wxa_user_name;
        private string wxa_path;
        private string url;

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

        public string getUrl() {
            return url;
        }

        public void setUrl(string url) {
            this.url = url;
        }
    }
}
