module hunt.wechat.bean.scan.result.ProductCreateResult;

import hunt.wechat.bean.BaseResult;

class ProductCreateResult : BaseResult {
    private Integer pid;

    public ProductCreateResult(Integer pid) {
        this.pid = pid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}
