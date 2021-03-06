module hunt.wechat.bean.component.ApiGetAuthorizerListResult;

import hunt.wechat.bean.BaseResult;

import hunt.collection.List;

/**
 * @ProjectName weixin-popular
 * @Auther: zeroJun
 * @Date: 2018/7/3 10:48
 * @Description:
 */
class ApiGetAuthorizerListResult : BaseResult {
    private Integer total_count;
    private List!(AuthInfo) list;

    public Integer getTotal_count() {
        return total_count;
    }

    public void setTotal_count(Integer total_count) {
        this.total_count = total_count;
    }

    public List!(AuthInfo) getList() {
        return list;
    }

    public void setList(List!(AuthInfo) list) {
        this.list = list;
    }

    static class AuthInfo {
        private string authorizer_appid;
        private string refresh_token;
        private string auth_time;

        public string getAuthorizer_appid() {
            return authorizer_appid;
        }

        public void setAuthorizer_appid(string authorizer_appid) {
            this.authorizer_appid = authorizer_appid;
        }

        public string getRefresh_token() {
            return refresh_token;
        }

        public void setRefresh_token(string refresh_token) {
            this.refresh_token = refresh_token;
        }

        public string getAuth_time() {
            return auth_time;
        }

        public void setAuth_time(string auth_time) {
            this.auth_time = auth_time;
        }
    }
}
