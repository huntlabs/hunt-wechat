module hunt.wechat.bean.bizwifi.shop.get.ShopGetResultData;

import hunt.collection.List;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 16:37
 * @Description:
 */
public class ShopGetResultData {
    private string shop_name;
    private string ssid;
    private List<string> ssid_list;
    private List<SsidPassword> ssid_password_list;

    public string getShop_name() {
        return shop_name;
    }

    public void setShop_name(string shop_name) {
        this.shop_name = shop_name;
    }

    public string getSsid() {
        return ssid;
    }

    public void setSsid(string ssid) {
        this.ssid = ssid;
    }

    public List<string> getSsid_list() {
        return ssid_list;
    }

    public void setSsid_list(List<string> ssid_list) {
        this.ssid_list = ssid_list;
    }

    public List<SsidPassword> getSsid_password_list() {
        return ssid_password_list;
    }

    public void setSsid_password_list(List<SsidPassword> ssid_password_list) {
        this.ssid_password_list = ssid_password_list;
    }

    public static class SsidPassword {
        private string ssid;
        private string password;

        public string getSsid() {
            return ssid;
        }

        public void setSsid(string ssid) {
            this.ssid = ssid;
        }

        public string getPassword() {
            return password;
        }

        public void setPassword(string password) {
            this.password = password;
        }
    }

    private string password;
    private Integer protocol_type;
    private Integer ap_count;
    private Integer template_id;
    private string homepage_url;
    private Integer bar_type;
    private string sid;
    private string poi_id;
    private string homepage_wxa_user_namel;
    private string homepage_wxa_path;
    private string finishpage_url;
    private string finishpage_wxa_user_name;
    private string finishpage_wxa_path;
    private Integer finishpage_type;

    public string getPassword() {
        return password;
    }

    public void setPassword(string password) {
        this.password = password;
    }

    public Integer getProtocol_type() {
        return protocol_type;
    }

    public void setProtocol_type(Integer protocol_type) {
        this.protocol_type = protocol_type;
    }

    public Integer getAp_count() {
        return ap_count;
    }

    public void setAp_count(Integer ap_count) {
        this.ap_count = ap_count;
    }

    public Integer getTemplate_id() {
        return template_id;
    }

    public void setTemplate_id(Integer template_id) {
        this.template_id = template_id;
    }

    public string getHomepage_url() {
        return homepage_url;
    }

    public void setHomepage_url(string homepage_url) {
        this.homepage_url = homepage_url;
    }

    public Integer getBar_type() {
        return bar_type;
    }

    public void setBar_type(Integer bar_type) {
        this.bar_type = bar_type;
    }

    public string getSid() {
        return sid;
    }

    public void setSid(string sid) {
        this.sid = sid;
    }

    public string getPoi_id() {
        return poi_id;
    }

    public void setPoi_id(string poi_id) {
        this.poi_id = poi_id;
    }

    public string getHomepage_wxa_user_namel() {
        return homepage_wxa_user_namel;
    }

    public void setHomepage_wxa_user_namel(string homepage_wxa_user_namel) {
        this.homepage_wxa_user_namel = homepage_wxa_user_namel;
    }

    public string getHomepage_wxa_path() {
        return homepage_wxa_path;
    }

    public void setHomepage_wxa_path(string homepage_wxa_path) {
        this.homepage_wxa_path = homepage_wxa_path;
    }

    public string getFinishpage_url() {
        return finishpage_url;
    }

    public void setFinishpage_url(string finishpage_url) {
        this.finishpage_url = finishpage_url;
    }

    public string getFinishpage_wxa_user_name() {
        return finishpage_wxa_user_name;
    }

    public void setFinishpage_wxa_user_name(string finishpage_wxa_user_name) {
        this.finishpage_wxa_user_name = finishpage_wxa_user_name;
    }

    public string getFinishpage_wxa_path() {
        return finishpage_wxa_path;
    }

    public void setFinishpage_wxa_path(string finishpage_wxa_path) {
        this.finishpage_wxa_path = finishpage_wxa_path;
    }

    public Integer getFinishpage_type() {
        return finishpage_type;
    }

    public void setFinishpage_type(Integer finishpage_type) {
        this.finishpage_type = finishpage_type;
    }
}
