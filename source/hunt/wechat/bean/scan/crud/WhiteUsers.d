module hunt.wechat.bean.scan.crud.WhiteUsers;

import hunt.collection.List;

class WhiteUsers {
    private List <string> openid;
    private List <string> username;

    public List!(string) getOpenid() {
        return openid;
    }

    public void setOpenid(List!(string) openid) {
        this.openid = openid;
    }

    public List!(string) getUsername() {
        return username;
    }

    public void setUsername(List!(string) username) {
        this.username = username;
    }
}
