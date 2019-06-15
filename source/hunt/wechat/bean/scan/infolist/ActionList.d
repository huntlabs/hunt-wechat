module hunt.wechat.bean.scan.infolist.ActionList;

class ActionList {
    private string  type;
    private string  retail_price;
    private string  name;
    private string  link;
    private string  showtype;
    private string  text;

    public string getType() {
        return type;
    }

    public void setType(string type) {
        this.type = type;
    }

    public string getRetail_price() {
        return retail_price;
    }

    public void setRetail_price(string retail_price) {
        this.retail_price = retail_price;
    }

    public string getName() {
        return name;
    }

    public void setName(string name) {
        this.name = name;
    }

    public string getLink() {
        return link;
    }

    public void setLink(string link) {
        this.link = link;
    }

    public string getShowtype() {
        return showtype;
    }

    public void setShowtype(string showtype) {
        this.showtype = showtype;
    }

    public string getText() {
        return text;
    }

    public void setText(string text) {
        this.text = text;
    }
}
