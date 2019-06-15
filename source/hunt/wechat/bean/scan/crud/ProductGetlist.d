module hunt.wechat.bean.scan.crud.ProductGetlist;


class ProductGetlist {
    private string offset;
    private string limit;
    private string status;

    public string getOffset() {
        return offset;
    }

    public void setOffset(string offset) {
        this.offset = offset;
    }

    public string getLimit() {
        return limit;
    }

    public void setLimit(string limit) {
        this.limit = limit;
    }

    public string getStatus() {
        return status;
    }

    public void setStatus(string status) {
        this.status = status;
    }
}
