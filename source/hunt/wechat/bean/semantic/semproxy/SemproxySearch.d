module hunt.wechat.bean.semantic.semproxy.SemproxySearch;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 18:09
 * @Description:
 */
public class SemproxySearch {
    private string query;
    private string city;
    private string category;
    private string appid;
    private string uid;
    private Float latitude;
    private Float longitude;
    private string region;

    public string getQuery() {
        return query;
    }

    public void setQuery(string query) {
        this.query = query;
    }

    public string getCity() {
        return city;
    }

    public void setCity(string city) {
        this.city = city;
    }

    public string getCategory() {
        return category;
    }

    public void setCategory(string category) {
        this.category = category;
    }

    public string getAppid() {
        return appid;
    }

    public void setAppid(string appid) {
        this.appid = appid;
    }

    public string getUid() {
        return uid;
    }

    public void setUid(string uid) {
        this.uid = uid;
    }

    public Float getLatitude() {
        return latitude;
    }

    public void setLatitude(Float latitude) {
        this.latitude = latitude;
    }

    public Float getLongitude() {
        return longitude;
    }

    public void setLongitude(Float longitude) {
        this.longitude = longitude;
    }

    public string getRegion() {
        return region;
    }

    public void setRegion(string region) {
        this.region = region;
    }
}
