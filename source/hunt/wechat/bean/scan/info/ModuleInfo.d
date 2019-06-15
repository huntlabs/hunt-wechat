module hunt.wechat.bean.scan.info.ModuleInfo;

import hunt.wechat.bean.scan.infolist.ModuleList;

import hunt.collection.List;

class ModuleInfo {
    private List!(ModuleList) module_list;

    public List!(ModuleList) getModule_list() {
        return module_list;
    }

    public void setModule_list(List!(ModuleList) module_list) {
        this.module_list = module_list;
    }
}
