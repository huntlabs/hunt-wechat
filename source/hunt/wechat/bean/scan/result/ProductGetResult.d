module hunt.wechat.bean.scan.result.ProductGetResult;


import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.crud.ProductCreate;

class ProductGetResult : BaseResult {
    private ProductCreate productCreate;

    public ProductCreate getProductCreate() {
        return productCreate;
    }

    public void setProductCreate(ProductCreate productCreate) {
        this.productCreate = productCreate;
    }
}
