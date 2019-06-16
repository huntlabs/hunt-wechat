module hunt.wechat.bean.paymch.SceneInfo;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import hunt.wechat.util.JsonUtil;

class SceneInfo {

	private H5Info h5_info;

	private StoreInfo store_info;

	public H5Info getH5_info() {
		return h5_info;
	}

	public void setH5_info(H5Info h5_info) {
		this.h5_info = h5_info;
	}

	public StoreInfo getStore_info() {
		return store_info;
	}

	public void setStore_info(StoreInfo store_info) {
		this.store_info = store_info;
	}

	static class H5Info {

		private string type;

		private string app_name;

		private string package_name;

		private string wap_url;

		private string wap_name;

		public string getType() {
			return type;
		}

		public void setType(string type) {
			this.type = type;
		}

		public string getApp_name() {
			return app_name;
		}

		public void setApp_name(string app_name) {
			this.app_name = app_name;
		}

		public string getPackage_name() {
			return package_name;
		}

		public void setPackage_name(string package_name) {
			this.package_name = package_name;
		}

		public string getWap_url() {
			return wap_url;
		}

		public void setWap_url(string wap_url) {
			this.wap_url = wap_url;
		}

		public string getWap_name() {
			return wap_name;
		}

		public void setWap_name(string wap_name) {
			this.wap_name = wap_name;
		}
	}

	static class StoreInfo {

		private string id;

		private string name;

		private string area_code;

		private string address;

		public string getId() {
			return id;
		}

		public void setId(string id) {
			this.id = id;
		}

		public string getName() {
			return name;
		}

		public void setName(string name) {
			this.name = name;
		}

		public string getArea_code() {
			return area_code;
		}

		public void setArea_code(string area_code) {
			this.area_code = area_code;
		}

		public string getAddress() {
			return address;
		}

		public void setAddress(string address) {
			this.address = address;
		}

	}

	static class JsonXmlAdapter : XmlAdapter!(string, SceneInfo) {

		override
		public string marshal(SceneInfo arg0){
			return "<![CDATA[" + JsonUtil.toJSONString(arg0) + "]]>";
		}

		override
		public SceneInfo unmarshal(string arg0){
			return JsonUtil.parseObject(arg0, typeid(SceneInfo));
		}
	}

}
