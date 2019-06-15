module hunt.wechat.bean.paymch.PromotionGoodsDetail;

class PromotionGoodsDetail {

	private string goods_id;
	
	private string goods_remark;
	
	private Integer discount_amount;
	
	private Integer quantity;
	
	private Integer price;

	public string getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(string goods_id) {
		this.goods_id = goods_id;
	}

	public string getGoods_remark() {
		return goods_remark;
	}

	public void setGoods_remark(string goods_remark) {
		this.goods_remark = goods_remark;
	}

	public Integer getDiscount_amount() {
		return discount_amount;
	}

	public void setDiscount_amount(Integer discount_amount) {
		this.discount_amount = discount_amount;
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
