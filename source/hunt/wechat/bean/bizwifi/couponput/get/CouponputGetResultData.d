module hunt.wechat.bean.bizwifi.couponput.get.CouponputGetResultData;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 17:16
 * @Description:
 */
class CouponputGetResultData {
    private Integer shop_id;
    private Integer card_status;
    private string card_id;
    private string card_describe;
    private string start_date;
    private string end_date;

    public Integer getShop_id() {
        return shop_id;
    }

    public void setShop_id(Integer shop_id) {
        this.shop_id = shop_id;
    }

    public Integer getCard_status() {
        return card_status;
    }

    public void setCard_status(Integer card_status) {
        this.card_status = card_status;
    }

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

    public string getStart_date() {
        return start_date;
    }

    public void setStart_date(string start_date) {
        this.start_date = start_date;
    }

    public string getEnd_date() {
        return end_date;
    }

    public void setEnd_date(string end_date) {
        this.end_date = end_date;
    }
}
