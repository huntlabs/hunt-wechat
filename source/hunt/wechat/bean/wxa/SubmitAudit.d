module hunt.wechat.bean.wxa.SubmitAudit;

import hunt.collection.ArrayList;
import hunt.collection.List;

class SubmitAudit {

	private List!(Item) item_list;

	public List!(Item) getItem_list() {
		return item_list;
	}

	public void setItem_list(List!(Item) item_list) {
		this.item_list = item_list;
	}

	public this() {
		item_list = new ArrayList!(Item)();
	}

	public this(List!(Item) item_list) {
		this.item_list = item_list;
	}
	public void addItem(string address,string tag,string first_class,string second_class,string title){
		Item item = new Item(address,tag,first_class,second_class,title);
		item_list.add(item);
	}
	public void removeItem(Item item){
		item_list.remove(item);
	}
	public void removeItem(int index){
		item_list.remove(index);
	}
	static class Item {

		private string address;
		private string tag;
		private string first_class;
		private string second_class;
		private string title;

		public this() {
		}

		public this(string address, string tag, string first_class, string second_class, string title) {
			this.address = address;
			this.tag = tag;
			this.first_class = first_class;
			this.second_class = second_class;
			this.title = title;
		}

		public string getAddress() {
			return address;
		}

		public void setAddress(string address) {
			this.address = address;
		}

		public string getTag() {
			return tag;
		}

		public void setTag(string tag) {
			this.tag = tag;
		}

		string getFirst_class() {
			return first_class;
		}

		void setFirst_class(string first_class) {
			this.first_class = first_class;
		}

		string getSecond_class() {
			return second_class;
		}

		void setSecond_class(string second_class) {
			this.second_class = second_class;
		}

		public string getTitle() {
			return title;
		}

		public void setTitle(string title) {
			this.title = title;
		}

	}

}
