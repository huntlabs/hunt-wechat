module hunt.wechat.bean.bizwifi.statistics.StatisticsList;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 17:29
 * @Description:
 */
class StatisticsList {
    private string begin_date;
    private string end_date;
    private string shop_id;

    public string getBegin_date() {
        return begin_date;
    }

    public void setBegin_date(string begin_date) {
        this.begin_date = begin_date;
    }

    public string getEnd_date() {
        return end_date;
    }

    public void setEnd_date(string end_date) {
        this.end_date = end_date;
    }

    public string getShop_id() {
        return shop_id;
    }

    public void setShop_id(string shop_id) {
        this.shop_id = shop_id;
    }
}
