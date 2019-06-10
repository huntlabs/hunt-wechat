module hunt.wechat.bean.scan.infolist.ModuleList;

public class ModuleList {
    private string type;
    private string native_show;
    private string anti_fake_url;

    public string getType() {
        return type;
    }

    public void setType(string type) {
        this.type = type;
    }

    public string getNative_show() {
        return native_show;
    }

    public void setNative_show(string native_show) {
        this.native_show = native_show;
    }

    public string getAnti_fake_url() {
        return anti_fake_url;
    }

    public void setAnti_fake_url(string anti_fake_url) {
        this.anti_fake_url = anti_fake_url;
    }
}
