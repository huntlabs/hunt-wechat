module hunt.wechat.bean.scan.crud.TicketCheck;


import hunt.wechat.bean.scan.base.ProductGet;


public class TicketCheck : ProductGet {
    private string extinfo;

    public string getExtinfo() {
        return extinfo;
    }

    public void setExtinfo(string extinfo) {
        this.extinfo = extinfo;
    }
}
