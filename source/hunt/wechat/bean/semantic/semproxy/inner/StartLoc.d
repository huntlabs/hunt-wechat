module hunt.wechat.bean.semantic.semproxy.inner.StartLoc;

/**
 * @program: weixin-popular
 * @description:
 * @author: 01
 * @create: 2018-08-18 13:33
 **/
public class StartLoc {
    private string type;
    private string city;
    private string city_simple;
    private string loc_ori;
    private string modify_times;
    private string slot_content_type;

    public string getModify_times() {
        return modify_times;
    }

    public void setModify_times(string modify_times) {
        this.modify_times = modify_times;
    }

    public string getSlot_content_type() {
        return slot_content_type;
    }

    public void setSlot_content_type(string slot_content_type) {
        this.slot_content_type = slot_content_type;
    }

    public string getType() {
        return type;
    }

    public void setType(string type) {
        this.type = type;
    }

    public string getCity() {
        return city;
    }

    public void setCity(string city) {
        this.city = city;
    }

    public string getCity_simple() {
        return city_simple;
    }

    public void setCity_simple(string city_simple) {
        this.city_simple = city_simple;
    }

    public string getLoc_ori() {
        return loc_ori;
    }

    public void setLoc_ori(string loc_ori) {
        this.loc_ori = loc_ori;
    }
}
