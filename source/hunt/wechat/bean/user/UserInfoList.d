module hunt.wechat.bean.user.UserInfoList;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;


public class UserInfoList : BaseResult{

	private List<User> user_info_list;

	public List<User> getUser_info_list() {
		return user_info_list;
	}

	public void setUser_info_list(List<User> user_info_list) {
		this.user_info_list = user_info_list;
	}

}
