module hunt.wechat.bean.poi.CategoryListResult;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 门店类目列表
 * 
 * 
 *
 */
class CategoryListResult {
	@JSONField(name = "category_list")
	private string[] categoryList;

	public string[] getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(string[] categoryList) {
		this.categoryList = categoryList;
	}
}
