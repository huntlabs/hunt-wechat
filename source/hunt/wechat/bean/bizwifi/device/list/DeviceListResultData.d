module hunt.wechat.bean.bizwifi.device.list.DeviceListResultData;

import hunt.collection.List;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 16:34
 * @Description:
 */
class DeviceListResultData {
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
        private string ssid;
        private string bssid;
        private Integer protocol_type;

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

        public string getBssid() {
            return bssid;
        }

        public void setBssid(string bssid) {
            this.bssid = bssid;
        }

        public Integer getProtocol_type() {
            return protocol_type;
        }

        public void setProtocol_type(Integer protocol_type) {
            this.protocol_type = protocol_type;
        }
    }
}
