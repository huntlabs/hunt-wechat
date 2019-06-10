module hunt.wechat.bean.bizwifi.couponput.set.CouponputSet;

import hunt.wechat.bean.bizwifi.base.ShopInfo;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 17:13
 * @Description:
 */
public class CouponputSet : ShopInfo {
    private string card_id;
    private string card_describe;
    private string start_time;
    private string end_time;

    public string getCard_id() {
        return card_id;
    }

    public void setCard_id(string card_id) {
        this.card_id = card_id;
    }

    public string getCard_describe() {
        return card_describe;
    }

    public void setCard_describe(string card_describe) {
        this.card_describe = card_describe;
    }

    public string getStart_time() {
        return start_time;
    }

    public void setStart_time(string start_time) {
        this.start_time = start_time;
    }

    public string getEnd_time() {
        return end_time;
    }

    public void setEnd_time(string end_time) {
        this.end_time = end_time;
    }
}
