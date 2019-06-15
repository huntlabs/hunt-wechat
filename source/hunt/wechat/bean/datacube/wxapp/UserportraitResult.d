module hunt.wechat.bean.datacube.wxapp.UserportraitResult;

import hunt.collection.List;

class UserportraitResult {

	private string ref_date;

	private VisitUv visit_uv_new;

	private VisitUv visit_uv;

	public string getRef_date() {
		return ref_date;
	}

	public void setRef_date(string ref_date) {
		this.ref_date = ref_date;
	}

	public VisitUv getVisit_uv_new() {
		return visit_uv_new;
	}

	public void setVisit_uv_new(VisitUv visit_uv_new) {
		this.visit_uv_new = visit_uv_new;
	}

	public VisitUv getVisit_uv() {
		return visit_uv;
	}

	public void setVisit_uv(VisitUv visit_uv) {
		this.visit_uv = visit_uv;
	}

	static class VisitUv {
		private List!(Item) province;

		private List!(Item) city;

		private List!(Item) genders;

		private List!(Item) platforms;

		private List!(Item) devices;

		private List!(Item) ages;

		public List!(Item) getProvince() {
			return province;
		}

		public void setProvince(List!(Item) province) {
			this.province = province;
		}

		public List!(Item) getCity() {
			return city;
		}

		public void setCity(List!(Item) city) {
			this.city = city;
		}

		public List!(Item) getGenders() {
			return genders;
		}

		public void setGenders(List!(Item) genders) {
			this.genders = genders;
		}

		public List!(Item) getPlatforms() {
			return platforms;
		}

		public void setPlatforms(List!(Item) platforms) {
			this.platforms = platforms;
		}

		public List!(Item) getDevices() {
			return devices;
		}

		public void setDevices(List!(Item) devices) {
			this.devices = devices;
		}

		public List!(Item) getAges() {
			return ages;
		}

		public void setAges(List!(Item) ages) {
			this.ages = ages;
		}

	}

	static class Item {
		private Integer id;

		private string name;

		private Integer value;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public string getName() {
			return name;
		}

		public void setName(string name) {
			this.name = name;
		}

		public Integer getValue() {
			return value;
		}

		public void setValue(Integer value) {
			this.value = value;
		}

	}
}
