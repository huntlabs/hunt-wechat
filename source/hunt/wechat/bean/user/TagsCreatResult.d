module hunt.wechat.bean.user.TagsCreatResult;

import hunt.wechat.bean.BaseResult;

/**
 * 标签
 * 
 * @author LiYi
 * 
 */
class TagsCreatResult : BaseResult {

	private Tag tag;

	public Tag getTag() {
		return tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}
}
