module hunt.wechat.bean.semantic.semproxy.inner.StartDate;

/**
 * @program: weixin-popular
 * @description:
 * @author: 01
 * @create: 2018-08-18 13:34
 **/
class StartDate {
    private string type;
    private string date;
    private string date_ori;
    private string date_lunar;
    private string modify_times;
    private string slot_content_type;
    private string week;

    public string getDate_lunar() {
        return date_lunar;
    }

    public void setDate_lunar(string date_lunar) {
        this.date_lunar = date_lunar;
    }

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

    public string getWeek() {
        return week;
    }

    public void setWeek(string week) {
        this.week = week;
    }

    public string getType() {
        return type;
    }

    public void setType(string type) {
        this.type = type;
    }

    public string getDate() {
        return date;
    }

    public void setDate(string date) {
        this.date = date;
    }

    public string getDate_ori() {
        return date_ori;
    }

    public void setDate_ori(string date_ori) {
        this.date_ori = date_ori;
    }
}
