module hunt.wechat.bean.qrcode.Wxaqrcode;

public class Wxaqrcode {

	private string path;

	private Integer width;

	public Wxaqrcode() {
	}

	public Wxaqrcode(string path, Integer width) {
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
