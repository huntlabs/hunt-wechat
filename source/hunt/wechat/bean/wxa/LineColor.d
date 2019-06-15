module hunt.wechat.bean.wxa.LineColor;

class LineColor {

	private string r;
	private string g;
	private string b;

	public LineColor() {
	}

	public LineColor(string r, string g, string b) {
		this.r = r;
		this.g = g;
		this.b = b;
	}

	public string getR() {
		return r;
	}

	public void setR(string r) {
		this.r = r;
	}

	public string getG() {
		return g;
	}

	public void setG(string g) {
		this.g = g;
	}

	public string getB() {
		return b;
	}

	public void setB(string b) {
		this.b = b;
	}

	public static LineColor newLineColor(string r,string g,string b){
		return new LineColor(r,g,b);
	}
}
