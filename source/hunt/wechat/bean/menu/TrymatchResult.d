module hunt.wechat.bean.menu.TrymatchResult;

import hunt.wechat.bean.BaseResult;

class TrymatchResult : BaseResult{

	private Button[] button;

	public Button[] getButton() {
		return button;
	}

	public void setButton(Button[] button) {
		this.button = button;
	}


}
