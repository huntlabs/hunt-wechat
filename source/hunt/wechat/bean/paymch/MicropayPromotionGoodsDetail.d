module hunt.wechat.bean.paymch.MicropayPromotionGoodsDetail;

class MicropayPromotionGoodsDetail {

	private string goods_id;

	private string wxpay_goods_id;

	private string goods_name;

	private Integer quantity;

	private Integer price;

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

}
