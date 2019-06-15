module hunt.wechat.bean.semantic.semproxy.SemproxySearchResult;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.semantic.semproxy.inner.Semantic;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 18:10
 * @Description:
 */
class SemproxySearchResult : BaseResult {

    private string query;
    private string type;
    private Semantic semantic;

    public string getQuery() {
        return query;
    }

    public void setQuery(string query) {
        this.query = query;
    }

    public string getType() {
        return type;
    }

    public void setType(string type) {
        this.type = type;
    }

    public Semantic getSemantic() {
        return semantic;
    }

    public void setSemantic(Semantic semantic) {
        this.semantic = semantic;
    }
}

