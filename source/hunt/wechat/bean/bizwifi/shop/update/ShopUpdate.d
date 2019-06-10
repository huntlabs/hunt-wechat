module hunt.wechat.bean.bizwifi.shop.update.ShopUpdate;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 12:04
 * @Description:
 */
public class ShopUpdate : ShopInfo {
    private string old_ssid;

    public string getOld_ssid() {
        return old_ssid;
    }

    public void setOld_ssid(string old_ssid) {
        this.old_ssid = old_ssid;
    }
}
