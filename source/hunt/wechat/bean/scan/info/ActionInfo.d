module hunt.wechat.bean.scan.info.ActionInfo;


import hunt.wechat.bean.scan.infolist.ActionList;

import hunt.collection.List;

class ActionInfo {
    private List!(ActionList) action_list;

    public List!(ActionList) getAction_list() {
        return action_list;
    }

    public void setAction_list(List!(ActionList) action_list) {
        this.action_list = action_list;
    }
}
