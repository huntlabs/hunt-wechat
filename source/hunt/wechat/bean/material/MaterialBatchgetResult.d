module hunt.wechat.bean.material.MaterialBatchgetResult;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;

public class MaterialBatchgetResult : BaseResult{

	private string total_count;

	private string item_count;

	private List<MaterialBatchgetResultItem> item;

	public string getTotal_count() {
		return total_count;
	}

	public void setTotal_count(string total_count) {
		this.total_count = total_count;
	}

	public string getItem_count() {
		return item_count;
	}

	public void setItem_count(string item_count) {
		this.item_count = item_count;
	}

	public List<MaterialBatchgetResultItem> getItem() {
		return item;
	}

	public void setItem(List<MaterialBatchgetResultItem> item) {
		this.item = item;
	}


}
