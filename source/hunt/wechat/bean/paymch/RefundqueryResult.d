module hunt.wechat.bean.paymch.RefundqueryResult;

import hunt.collection.ArrayList;
import hunt.collection.List;
import hunt.collection.Map;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import hunt.wechat.bean.DynamicField;

/**
 * 退款查询
 *
 * @author Yi
 *
 */

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class RefundqueryResult : MchBase : DynamicField{

	private string device_info;

	private string transaction_id;

	private string out_trade_no;

	private Integer total_fee;
	
	private Integer settlement_total_fee;
	
	private string fee_type;

	private Integer cash_fee;

	private Integer refund_count;
	
	private string refund_account;

	@XmlTransient
	private List!(RefundqueryResultItem) refundqueryResultItems;
	

	public string getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(string transaction_id) {
		this.transaction_id = transaction_id;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public Integer getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}

	public string getFee_type() {
		return fee_type;
	}

	public void setFee_type(string fee_type) {
		this.fee_type = fee_type;
	}

	public Integer getCash_fee() {
		return cash_fee;
	}

	public void setCash_fee(Integer cash_fee) {
		this.cash_fee = cash_fee;
	}

	public Integer getRefund_count() {
		return refund_count;
	}

	public void setRefund_count(Integer refund_count) {
		this.refund_count = refund_count;
	}

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public Integer getSettlement_total_fee() {
		return settlement_total_fee;
	}

	public void setSettlement_total_fee(Integer settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}

	public string getRefund_account() {
		return refund_account;
	}

	public void setRefund_account(string refund_account) {
		this.refund_account = refund_account;
	}
	
	public void setRefundqueryResultItems(List!(RefundqueryResultItem) refundqueryResultItems) {
		this.refundqueryResultItems = refundqueryResultItems;
	}

	public List!(RefundqueryResultItem) getRefundqueryResultItems() {
		return refundqueryResultItems;
	}
	
	override
	public void buildDynamicField(Map!(string, string) dataMap) {
		if(dataMap != null){
			string refund_countStr = dataMap.get("refund_count");
			if(refund_countStr != null){
				List!(RefundqueryResultItem) list = new ArrayList!(RefundqueryResultItem)();
				for (int i = 0; i < Integer.parseInt(refund_countStr); i++) {
					RefundqueryResultItem item = new RefundqueryResultItem();
					item.setOut_refund_no(dataMap.get("out_refund_no_"+i));
					item.setRefund_id(dataMap.get("refund_id_"+i));
					item.setRefund_channel(dataMap.get("refund_channel_"+i));
					item.setRefund_fee(dataMap.get("refund_fee_"+i)==null?null:Integer.parseInt(dataMap.get("refund_fee_"+i)));
					item.setSettlement_refund_fee(dataMap.get("settlement_refund_fee_"+i)==null?null:Integer.parseInt(dataMap.get("settlement_refund_fee_"+i)));
					item.setCoupon_type(dataMap.get("coupon_type_"+i));
					item.setCoupon_refund_fee(dataMap.get("coupon_refund_fee_"+i)==null?null:Integer.parseInt(dataMap.get("coupon_refund_fee_"+i)));
					item.setCoupon_refund_count(dataMap.get("coupon_refund_count_"+i)==null?null:Integer.parseInt(dataMap.get("coupon_refund_count_"+i)));
					item.setCoupon_refund(dataMap.get("coupon_refund_"+i));
					item.setRefund_status(dataMap.get("refund_status_"+i));
					item.setRefund_recv_accout(dataMap.get("refund_recv_accout_"+i));
					item.setN(i);
					if(item.getCoupon_refund_count()!= null){
						List!(Coupon) couponList = new ArrayList!(Coupon)();
						for(int j=0;j<item.getCoupon_refund_count();j++){
							Coupon coupon = new Coupon(
									null,
									dataMap.get("coupon_refund_id_"+i+"_"+j),
									dataMap.get("coupon_refund_fee_"+i+"_"+j) == null ? null:Integer.parseInt(dataMap.get("coupon_refund_fee_"+i+"_"+j)), 
									j);
							couponList.add(coupon);
						}
						item.setCoupons(couponList);
					}
					list.add(item);
				}
				this.refundqueryResultItems = list;
			}
		}
	}
	
	
}
