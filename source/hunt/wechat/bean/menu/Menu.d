module hunt.wechat.bean.menu.Menu;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;


public class Menu : BaseResult{

	private MenuButtons menu;

	private List<MenuButtons> conditionalmenu;

	public MenuButtons getMenu() {
		return menu;
	}

	public void setMenu(MenuButtons menu) {
		this.menu = menu;
	}

	public List<MenuButtons> getConditionalmenu() {
		return conditionalmenu;
	}

	public void setConditionalmenu(List<MenuButtons> conditionalmenu) {
		this.conditionalmenu = conditionalmenu;
	}

}
