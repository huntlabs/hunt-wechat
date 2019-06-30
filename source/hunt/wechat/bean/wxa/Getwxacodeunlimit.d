module hunt.wechat.bean.wxa.Getwxacodeunlimit;

class Getwxacodeunlimit {

	private string scene;
	
	private Integer width;
	
	private Boolean auto_color;
	
	private LineColor line_color;
	
	private string page;

	public this() {
	}

	public this(string scene, Integer width, Boolean auto_color, LineColor line_color) {
		this.scene = scene;
		this.width = width;
		this.auto_color = auto_color;
		this.line_color = line_color;
	}

	public string getScene() {
		return scene;
	}

	public void setScene(string scene) {
		this.scene = scene;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Boolean getAuto_color() {
		return auto_color;
	}

	public void setAuto_color(Boolean auto_color) {
		this.auto_color = auto_color;
	}

	public LineColor getLine_color() {
		return line_color;
	}

	public void setLine_color(LineColor line_color) {
		this.line_color = line_color;
	}

	public string getPage() {
		return page;
	}

	public void setPage(string page) {
		this.page = page;
	}
	
}
