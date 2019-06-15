module hunt.wechat.bean.menu.selfmenu.Button;

import hunt.collection.List;


class Button {

	private string name;

	private string type;	// click|view|scancode_waitmsg|scancode_push|pic_sysphoto|pic_photo_or_album|pic_weixin|location_select|media_id|view_limited|miniprogram
	private string key;		// click、scancode_push、scancode_waitmsg、pic_sysphoto、pic_photo_or_album、	pic_weixin、location_select：保存值到key；
	private string url;		//View：保存链接到url。
	private string value;	//保存文字到value； Img、voice：保存mediaID到value； Video：保存视频下载链接到value； News：保存图文消息到news_info，同时保存mediaID到value； 
	private NewsInfo news_info;
	private string appid; // 小程序的appid
	private string pagepath;// 小程序的页面路径

	private List!(Button) list;


	private Button sub_button;


	public string getName() {
		return name;
	}


	public void setName(string name) {
		this.name = name;
	}


	public string getType() {
		return type;
	}


	public void setType(string type) {
		this.type = type;
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


	public List!(Button) getList() {
		return list;
	}


	public void setList(List!(Button) list) {
		this.list = list;
	}

	public Button getSub_button() {
		return sub_button;
	}


	public void setSub_button(Button sub_button) {
		this.sub_button = sub_button;
	}


	public NewsInfo getNews_info() {
		return news_info;
	}


	public void setNews_info(NewsInfo news_info) {
		this.news_info = news_info;
	}


	public string getValue() {
		return value;
	}


	public void setValue(string value) {
		this.value = value;
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
