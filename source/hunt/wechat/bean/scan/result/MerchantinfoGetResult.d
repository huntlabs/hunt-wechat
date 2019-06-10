module hunt.wechat.bean.scan.result.MerchantinfoGetResult;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.infolist.VerifiedList;

import hunt.collection.List;

public class MerchantinfoGetResult : BaseResult {
    private string[] brand_tag_list;
    private List<VerifiedList> verified_list;

    public string[] getBrand_tag_list() {
        return brand_tag_list;
    }

    public void setBrand_tag_list(string[] brand_tag_list) {
        this.brand_tag_list = brand_tag_list;
    }

    public List<VerifiedList> getVerified_list() {
        return verified_list;
    }

    public void setVerified_list(List<VerifiedList> verified_list) {
        this.verified_list = verified_list;
    }
}
