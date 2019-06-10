module hunt.wechat.bean.bizwifi.bar.BarSet;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 17:05
 * @Description:
 */
public class BarSet : ShopInfo {
    private Integer bar_type;

    public Integer getBar_type() {
        return bar_type;
    }

    public void setBar_type(Integer bar_type) {
        this.bar_type = bar_type;
    }
}
