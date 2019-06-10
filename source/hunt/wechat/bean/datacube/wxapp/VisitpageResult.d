module hunt.wechat.bean.datacube.wxapp.VisitpageResult;

import hunt.collection.List;

public class VisitpageResult {

	private string ref_date;

	private List<Item> list;

	public string getRef_date() {
		return ref_date;
	}

	public void setRef_date(string ref_date) {
		this.ref_date = ref_date;
	}

	public List<Item> getList() {
		return list;
	}

	public void setList(List<Item> list) {
		this.list = list;
	}

	public static class Item {
		private string page_path;

		private Integer page_visit_pv;
		private Integer page_visit_uv;
		private Integer page_staytime_pv;
		private Integer entrypage_pv;
		private Integer exitpage_pv;
		private Integer page_share_pv;
		private Integer page_share_uv;

		public string getPage_path() {
			return page_path;
		}

		public void setPage_path(string page_path) {
			this.page_path = page_path;
		}

		public Integer getPage_visit_pv() {
			return page_visit_pv;
		}

		public void setPage_visit_pv(Integer page_visit_pv) {
			this.page_visit_pv = page_visit_pv;
		}

		public Integer getPage_visit_uv() {
			return page_visit_uv;
		}

		public void setPage_visit_uv(Integer page_visit_uv) {
			this.page_visit_uv = page_visit_uv;
		}

		public Integer getPage_staytime_pv() {
			return page_staytime_pv;
		}

		public void setPage_staytime_pv(Integer page_staytime_pv) {
			this.page_staytime_pv = page_staytime_pv;
		}

		public Integer getEntrypage_pv() {
			return entrypage_pv;
		}

		public void setEntrypage_pv(Integer entrypage_pv) {
			this.entrypage_pv = entrypage_pv;
		}

		public Integer getExitpage_pv() {
			return exitpage_pv;
		}

		public void setExitpage_pv(Integer exitpage_pv) {
			this.exitpage_pv = exitpage_pv;
		}

		public Integer getPage_share_pv() {
			return page_share_pv;
		}

		public void setPage_share_pv(Integer page_share_pv) {
			this.page_share_pv = page_share_pv;
		}

		public Integer getPage_share_uv() {
			return page_share_uv;
		}

		public void setPage_share_uv(Integer page_share_uv) {
			this.page_share_uv = page_share_uv;
		}

	}
}
