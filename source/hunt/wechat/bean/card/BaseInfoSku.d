module hunt.wechat.bean.card.BaseInfoSku;

/**
 * 商品信息
 * 
 * 
 *
 */
class BaseInfoSku {

	/**
	 * 卡券库存的数量，上限为100000000。
	 * 添加必填
	 */
	private Integer quantity;

	/**
	 * 卡券库存的数量，上限为100000000。
	 */
	public Integer getQuantity() {
		return quantity;
	}

	/**
	 * 卡券库存的数量，上限为100000000。
	 * 添加必填
	 */
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}
