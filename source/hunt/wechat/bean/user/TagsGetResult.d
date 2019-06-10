module hunt.wechat.bean.user.TagsGetResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

/**
 * 标签
 * 
 * @author LiYi
 * 
 */
public class TagsGetResult : BaseResult {

	private List<Tag> tags;

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	
}
