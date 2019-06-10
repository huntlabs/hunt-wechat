module hunt.wechat.bean.wxa.GetCategoryResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class GetCategoryResult : BaseResult {

	private List<Category> category_list;

	public List<Category> getCategory_list() {
		return category_list;
	}

	public void setCategory_list(List<Category> category_list) {
		this.category_list = category_list;
	}

	public static class Category {

		private string first_class;
		private string second_class;
		private string third_class;

		public string getFirst_class() {
			return first_class;
		}

		public void setFirst_class(string first_class) {
			this.first_class = first_class;
		}

		public string getSecond_class() {
			return second_class;
		}

		public void setSecond_class(string second_class) {
			this.second_class = second_class;
		}

		public string getThird_class() {
			return third_class;
		}

		public void setThird_class(string third_class) {
			this.third_class = third_class;
		}

	}
}
