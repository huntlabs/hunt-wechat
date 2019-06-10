module hunt.wechat.bean.scan.result.ProductGetlistResult;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.infolist.KeyList;

import hunt.collection.List;

public class ProductGetlistResult : BaseResult {

    private Integer total;
    private List<KeyList> key_list;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<KeyList> getKey_list() {
        return key_list;
    }

    public void setKey_list(List<KeyList> key_list) {
        this.key_list = key_list;
    }
}
