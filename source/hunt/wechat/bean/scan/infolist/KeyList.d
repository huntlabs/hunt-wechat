module hunt.wechat.bean.scan.infolist.KeyList;
import hunt.wechat.bean.scan.base.ProductGet;

public class KeyList : ProductGet {
    private string category_id;
    private string category_name;
    private Long update_time;
    private string status;

    public string getCategory_id() {
        return category_id;
    }

    public void setCategory_id(string category_id) {
        this.category_id = category_id;
    }

    public string getCategory_name() {
        return category_name;
    }

    public void setCategory_name(string category_name) {
        this.category_name = category_name;
    }

    public Long getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Long update_time) {
        this.update_time = update_time;
    }

    public string getStatus() {
        return status;
    }

    public void setStatus(string status) {
        this.status = status;
    }
}
