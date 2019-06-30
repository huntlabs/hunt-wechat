module hunt.wechat.bean.qrcode.Wxaqrcode;

class Wxaqrcode {

	private string path;

	private Integer width;

	public this() {
	}

	public this(string path, Integer width) {
		this.path = path;
		this.width = width;
	}

	public string getPath() {
		return path;
	}

	public void setPath(string path) {
		this.path = path;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

}
