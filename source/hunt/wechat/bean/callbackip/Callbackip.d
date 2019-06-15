module hunt.wechat.bean.callbackip.Callbackip;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

class Callbackip : BaseResult{

	public List!(string) ip_list;

	public List!(string) getIp_list() {
		return ip_list;
	}

	public void setIp_list(List!(string) ip_list) {
		this.ip_list = ip_list;
	}
	
}
