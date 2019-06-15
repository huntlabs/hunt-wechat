module hunt.wechat.bean.scan.crud.ProductUpdate;


import hunt.wechat.bean.scan.base.ProductGet;

class ProductUpdate : ProductGet {
    private BrandInfoUpdate brand_info;

    public BrandInfoUpdate getBrand_info() {
        return brand_info;
    }

    public void setBrand_info(BrandInfoUpdate brand_info) {
        this.brand_info = brand_info;
    }
}
