module hunt.wechat.bean.paymch.GoodsDetail;

class GoodsDetail {

	private string goods_id; // 必填 32 商品的编号

	private string wxpay_goods_id; // 可选 32 微信支付定义的统一商品编号

	private string goods_name; // 可选 256 商品名称

	private Integer quantity; // 必填 32 商品数量

	private Integer price; // 必填 32 商品单价，如果商户有优惠，需传输商户优惠后的单价
	
	private string goods_category;	//类目
	
	private string body;			//名称

	public string getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(string goods_id) {
		this.goods_id = goods_id;
	}

	public string getWxpay_goods_id() {
		return wxpay_goods_id;
	}

	public void setWxpay_goods_id(string wxpay_goods_id) {
		this.wxpay_goods_id = wxpay_goods_id;
	}

	public string getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(string goods_name) {
		this.goods_name = goods_name;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public string getGoods_category() {
		return goods_category;
	}

	public void setGoods_category(string goods_category) {
		this.goods_category = goods_category;
	}

	public string getBody() {
		return body;
	}

	public void setBody(string body) {
		this.body = body;
	}
	
}
