module hunt.wechat.bean.scan.crud.BrandInfoUpdate;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.info.ActionInfo;


public class BrandInfoUpdate : BaseResult {
    private ActionInfo action_info;

    public ActionInfo getAction_info() {
        return action_info;
    }

    public void setAction_info(ActionInfo action_info) {
        this.action_info = action_info;
    }
}
