module hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 11:44
 * @Description:
 */
class ShopInfo {
    private Integer shop_id;
    private string ssid;
    private string password;

    public Integer getShop_id() {
        return shop_id;
    }

    public void setShop_id(Integer shop_id) {
        this.shop_id = shop_id;
    }

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
