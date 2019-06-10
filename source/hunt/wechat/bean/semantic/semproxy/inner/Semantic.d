module hunt.wechat.bean.semantic.semproxy.inner.Semantic;

/**
 * @program: weixin-popular
 * @description:
 * @author: 01
 * @create: 2018-08-18 13:30
 **/
public class Semantic {
    private Details details;
    private string intent;

    public Details getDetails() {
        return details;
    }

    public void setDetails(Details details) {
        this.details = details;
    }

    public string getIntent() {
        return intent;
    }

    public void setIntent(string intent) {
        this.intent = intent;
    }
}
