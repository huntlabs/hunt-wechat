module hunt.wechat.bean.scan.crud.ProductGetqrcode;


import hunt.wechat.bean.scan.base.ProductGet;


public class ProductGetqrcode : ProductGet {
    private string extinfo;
    private string qrcode_size;

    public string getExtinfo() {
        return extinfo;
    }

    public void setExtinfo(string extinfo) {
        this.extinfo = extinfo;
    }

    public string getQrcode_size() {
        return qrcode_size;
    }

    public void setQrcode_size(string qrcode_size) {
        this.qrcode_size = qrcode_size;
    }
}
