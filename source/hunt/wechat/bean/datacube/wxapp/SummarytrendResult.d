module hunt.wechat.bean.datacube.wxapp.SummarytrendResult;

import hunt.collection.List;

class SummarytrendResult {

	private List!(Item) list;

	public List!(Item) getList() {
		return list;
	}

	public void setList(List!(Item) list) {
		this.list = list;
	}

	static class Item {
		private string ref_date;

		private Integer visit_total;

		private Integer share_pv;

		private Integer share_uv;

		public string getRef_date() {
			return ref_date;
		}

		public void setRef_date(string ref_date) {
			this.ref_date = ref_date;
		}

		public Integer getVisit_total() {
			return visit_total;
		}

		public void setVisit_total(Integer visit_total) {
			this.visit_total = visit_total;
		}

		public Integer getShare_pv() {
			return share_pv;
		}

		public void setShare_pv(Integer share_pv) {
			this.share_pv = share_pv;
		}

		public Integer getShare_uv() {
			return share_uv;
		}

		public void setShare_uv(Integer share_uv) {
			this.share_uv = share_uv;
		}
	}

}
