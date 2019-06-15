module hunt.wechat.bean.datacube.wxapp.VisitdistributionResult;

import hunt.collection.List;

class VisitdistributionResult {

	private string ref_date;

	private List!(Item) list;

	public string getRef_date() {
		return ref_date;
	}

	public void setRef_date(string ref_date) {
		this.ref_date = ref_date;
	}

	public List!(Item) getList() {
		return list;
	}

	public void setList(List!(Item) list) {
		this.list = list;
	}

	static class Item {

		private string index;

		private List!(Item_list) item_list;

		public string getIndex() {
			return index;
		}

		public void setIndex(string index) {
			this.index = index;
		}

		public List!(Item_list) getItem_list() {
			return item_list;
		}

		public void setItem_list(List!(Item_list) item_list) {
			this.item_list = item_list;
		}

	}

	static class Item_list {
		private Integer key;

		private Integer value;

		public Integer getKey() {
			return key;
		}

		public void setKey(Integer key) {
			this.key = key;
		}

		public Integer getValue() {
			return value;
		}

		public void setValue(Integer value) {
			this.value = value;
		}

	}

}
