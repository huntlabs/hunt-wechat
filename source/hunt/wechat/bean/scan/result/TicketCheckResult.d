module hunt.wechat.bean.scan.result.TicketCheckResult;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.base.ProductGet;

public class TicketCheckResult : BaseResult {
    private ProductGet productGet;
    private string openid;
    private string scene;
    private Boolean is_check;
    private Boolean is_contact;

    public ProductGet getProductGet() {
        return productGet;
    }

    public void setProductGet(ProductGet productGet) {
        this.productGet = productGet;
    }

    public string getOpenid() {
        return openid;
    }

    public void setOpenid(string openid) {
        this.openid = openid;
    }

    public string getScene() {
        return scene;
    }

    public void setScene(string scene) {
        this.scene = scene;
    }

    public Boolean getIs_check() {
        return is_check;
    }

    public void setIs_check(Boolean is_check) {
        this.is_check = is_check;
    }

    public Boolean getIs_contact() {
        return is_contact;
    }

    public void setIs_contact(Boolean is_contact) {
        this.is_contact = is_contact;
    }
}
