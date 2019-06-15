module hunt.wechat.bean.scan.result.ProductGetqrcodeResult;

import hunt.wechat.bean.BaseResult;

class ProductGetqrcodeResult : BaseResult {
    private string pic_url;
    private string qrcode_url;

    public string getPic_url() {
        return pic_url;
    }

    public void setPic_url(string pic_url) {
        this.pic_url = pic_url;
    }

    public string getQrcode_url() {
        return qrcode_url;
    }

    public void setQrcode_url(string qrcode_url) {
        this.qrcode_url = qrcode_url;
    }
}
