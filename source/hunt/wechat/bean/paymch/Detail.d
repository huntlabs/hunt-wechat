module hunt.wechat.bean.paymch.Detail;

import hunt.collection.List;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import com.alibaba.fastjson.JSON;

/**
 * 统一下单detail json 数据对象
 * 注意：单品总金额应<=订单总金额total_fee，否则会无法享受优惠。
 * 
 * 
 *
 */
class Detail {

	private Integer cost_price; // 可选 32
								// 订单原价，商户侧一张小票订单可能被分多次支付，订单原价用于记录整张小票的支付金额。当订单原价与支付金额不相等则被判定为拆单，无法享受优惠。

	private string receipt_id; // 可选 32 商家小票ID

	private List!(GoodsDetail) goods_detail;// 服务商必填

	public Integer getCost_price() {
		return cost_price;
	}

	public void setCost_price(Integer cost_price) {
		this.cost_price = cost_price;
	}

	public string getReceipt_id() {
		return receipt_id;
	}

	public void setReceipt_id(string receipt_id) {
		this.receipt_id = receipt_id;
	}

	public List!(GoodsDetail) getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(List!(GoodsDetail) goods_detail) {
		this.goods_detail = goods_detail;
	}

	static class JsonXmlAdapter : XmlAdapter!(string, Detail) {

		override
		public string marshal(Detail v){
			return "<![CDATA[" + JSON.toJSONString(v) + "]]>";
		}

		override
		public Detail unmarshal(string v){
			return JSON.parseObject(v, typeid(Detail));
		}

	}
}
