module hunt.wechat.bean.scan.crud.ProductCreate;


import hunt.wechat.bean.scan.base.ProductGet;
import hunt.wechat.bean.scan.info.BrandInfo;

public class ProductCreate : ProductGet {
    private BrandInfo brand_info;

    public BrandInfo getBrand_info() {
        return brand_info;
    }

    public void setBrand_info(BrandInfo brand_info) {
        this.brand_info = brand_info;
    }
}
