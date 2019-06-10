module hunt.wechat.bean.bizwifi.apportal.ApportalRegister;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 15:41
 * @Description:
 */
public class ApportalRegister : ShopInfo {
    private Boolean reset;

    public Boolean getReset() {
        return reset;
    }

    public void setReset(Boolean reset) {
        this.reset = reset;
    }
}
