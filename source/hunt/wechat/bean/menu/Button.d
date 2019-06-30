module hunt.wechat.bean.menu.Button;

import hunt.collection.List;

class Button {

	private string type; // click|view|scancode_waitmsg|scancode_push|pic_sysphoto|pic_photo_or_album|pic_weixin|location_select|media_id|view_limited|miniprogram
	private string name;
	private string key;
	private string url;
	private string media_id;
	private string appid; // 小程序的appid
	private string pagepath;// 小程序的页面路径

	private List!(Button) sub_button;

	public this() {
	}

	public this(string type, string name, string key, string url, string media_id, string appid, string pagepath) {
		this.type = type;
		this.name = name;
		this.key = key;
		this.url = url;
		this.media_id = media_id;
		this.appid = appid;
		this.pagepath = pagepath;
	}

	public string getType() {
		return type;
	}

	public void setType(string type) {
		this.type = type;
	}

	public string getName() {
		return name;
	}

	public void setName(string name) {
		this.name = name;
	}

	public string getKey() {
		return key;
	}

	public void setKey(string key) {
		this.key = key;
	}

	public string getUrl() {
		return url;
	}

	public void setUrl(string url) {
		this.url = url;
	}

	public List!(Button) getSub_button() {
		return sub_button;
	}

	public void setSub_button(List!(Button) subButton) {
		sub_button = subButton;
	}

	public string getMedia_id() {
		return media_id;
	}

	public void setMedia_id(string media_id) {
		this.media_id = media_id;
	}

	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getPagepath() {
		return pagepath;
	}

	public void setPagepath(string pagepath) {
		this.pagepath = pagepath;
	}

}