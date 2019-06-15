module hunt.wechat.bean.menu.MenuAddconditionalResult;

import hunt.wechat.bean.BaseResult;

class MenuAddconditionalResult : BaseResult {
	
	private string menuid;

	public string getMenuid() {
		return menuid;
	}

	public void setMenuid(string menuid) {
		this.menuid = menuid;
	}

}