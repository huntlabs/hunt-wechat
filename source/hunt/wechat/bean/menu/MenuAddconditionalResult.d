module hunt.wechat.bean.menu.MenuAddconditionalResult;

import hunt.wechat.bean.BaseResult;

public class MenuAddconditionalResult : BaseResult {
	
	private string menuid;

	public string getMenuid() {
		return menuid;
	}

	public void setMenuid(string menuid) {
		this.menuid = menuid;
	}

}