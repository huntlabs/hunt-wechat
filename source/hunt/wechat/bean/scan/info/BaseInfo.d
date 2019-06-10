module hunt.wechat.bean.scan.info.BaseInfo;


public class BaseInfo {
    private string  base_info;
    private string  title;
    private string  brand_tag;
    private string  category_id;
    private string  store_mgr_type;
    private string  [] store_vendorid_list;
    private string  color;

    public string getBase_info() {
        return base_info;
    }

    public void setBase_info(string base_info) {
        this.base_info = base_info;
    }

    public string getTitle() {
        return title;
    }

    public void setTitle(string title) {
        this.title = title;
    }

    public string getBrand_tag() {
        return brand_tag;
    }

    public void setBrand_tag(string brand_tag) {
        this.brand_tag = brand_tag;
    }

    public string getCategory_id() {
        return category_id;
    }

    public void setCategory_id(string category_id) {
        this.category_id = category_id;
    }

    public string getStore_mgr_type() {
        return store_mgr_type;
    }

    public void setStore_mgr_type(string store_mgr_type) {
        this.store_mgr_type = store_mgr_type;
    }

    public string[] getStore_vendorid_list() {
        return store_vendorid_list;
    }

    public void setStore_vendorid_list(string[] store_vendorid_list) {
        this.store_vendorid_list = store_vendorid_list;
    }

    public string getColor() {
        return color;
    }

    public void setColor(string color) {
        this.color = color;
    }
}
