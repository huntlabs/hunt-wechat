module hunt.wechat.bean.user.TagsGetidlistResult;

import hunt.wechat.bean.BaseResult;

public class TagsGetidlistResult : BaseResult{

	private Integer[] tagid_list;

	public Integer[] getTagid_list() {
		return tagid_list;
	}

	public void setTagid_list(Integer[] tagid_list) {
		this.tagid_list = tagid_list;
	}
	
}