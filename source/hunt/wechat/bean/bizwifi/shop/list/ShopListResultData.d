module hunt.wechat.bean.bizwifi.shop.list.ShopListResultData;

import hunt.collection.List;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 16:38
 * @Description:
 */
class ShopListResultData {
    private Integer totalcount;
    private Integer pageindex;
    private Integer pagecount;
    private List!(Records) records;

    public Integer getTotalcount() {
        return totalcount;
    }

    public void setTotalcount(Integer totalcount) {
        this.totalcount = totalcount;
    }

    public Integer getPageindex() {
        return pageindex;
    }

    public void setPageindex(Integer pageindex) {
        this.pageindex = pageindex;
    }

    public Integer getPagecount() {
        return pagecount;
    }

    public void setPagecount(Integer pagecount) {
        this.pagecount = pagecount;
    }

    public List!(Records) getRecords() {
        return records;
    }

    public void setRecords(List!(Records) records) {
        this.records = records;
    }

    static class Records {
        private Integer shop_id;
        private string shop_name;
        private string ssid;
        private List!(string) ssid_list;
        private Integer protocol_type;
        private string sid;
        private string poi_id;

        public Integer getShop_id() {
            return shop_id;
        }

        public void setShop_id(Integer shop_id) {
            this.shop_id = shop_id;
        }

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

        public List!(string) getSsid_list() {
            return ssid_list;
        }

        public void setSsid_list(List!(string) ssid_list) {
            this.ssid_list = ssid_list;
        }

        public Integer getProtocol_type() {
            return protocol_type;
        }

        public void setProtocol_type(Integer protocol_type) {
            this.protocol_type = protocol_type;
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
    }
}
