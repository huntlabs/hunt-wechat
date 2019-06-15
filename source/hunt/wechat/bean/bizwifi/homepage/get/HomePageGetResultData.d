module hunt.wechat.bean.bizwifi.homepage.get.HomePageGetResultData;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 17:00
 * @Description:
 */
class HomePageGetResultData {
    private Integer shop_id;
    private Integer template_id;
    private string url;

    public Integer getShop_id() {
        return shop_id;
    }

    public void setShop_id(Integer shop_id) {
        this.shop_id = shop_id;
    }

    public Integer getTemplate_id() {
        return template_id;
    }

    public void setTemplate_id(Integer template_id) {
        this.template_id = template_id;
    }

    public string getUrl() {
        return url;
    }

    public void setUrl(string url) {
        this.url = url;
    }
}
