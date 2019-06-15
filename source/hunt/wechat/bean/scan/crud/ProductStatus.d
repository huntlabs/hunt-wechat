module hunt.wechat.bean.scan.crud.ProductStatus;


import hunt.wechat.bean.scan.base.ProductGet;


class ProductStatus : ProductGet {

    private string status;

    public string getStatus() {
        return status;
    }

    public void setStatus(string status) {
        this.status = status;
    }
}
