module hunt.wechat.bean.paymch.SecapiPayRefund;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

/**
 * 退款申请
 *
 * @author Yi
 *
 */

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class SecapiPayRefund {

	private string appid;
	
	private string mch_id;
	
	private string device_info;
	
	private string nonce_str;
	
	private string sign;
	
	private string sign_type;
	
	private string transaction_id;

	private string out_trade_no;

	private string out_refund_no;

	private Integer total_fee;

	private BigDecimal order_amount;

	private Integer refund_fee;

	private string refund_fee_type;
	
	/**
	 * @since 2.8.21
	 */
	private string refund_desc;

	private string op_user_id;
	
	/**
	 * @since 2.8.5
	 */
	private string sub_appid;

	/**
	 * @since 2.8.5
	 */
	private string sub_mch_id;
	
	/**
	 * @since 2.8.5
	 */
	private string refund_account;		//退款资金来源
										//REFUND_SOURCE_UNSETTLED_FUNDS ---未结算资金退款（默认使用未结算资金退款）
										//REFUND_SOURCE_RECHARGE_FUNDS  ---可用余额退款
	/**
	 * @since 2.8.19
	 */
	private string notify_url;
	
	public string getAppid() {
		return appid;
	}

	public void setAppid(string appid) {
		this.appid = appid;
	}

	public string getMch_id() {
		return mch_id;
	}

	public void setMch_id(string mch_id) {
		this.mch_id = mch_id;
	}

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getNonce_str() {
		return nonce_str;
	}

	public void setNonce_str(string nonce_str) {
		this.nonce_str = nonce_str;
	}

	public string getSign() {
		return sign;
	}

	public void setSign(string sign) {
		this.sign = sign;
	}

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

	public string getOut_refund_no() {
		return out_refund_no;
	}

	public void setOut_refund_no(string out_refund_no) {
		this.out_refund_no = out_refund_no;
	}

	public Integer getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}

	public Integer getRefund_fee() {
		return refund_fee;
	}

	public void setRefund_fee(Integer refund_fee) {
		this.refund_fee = refund_fee;
	}

	public BigDecimal getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(BigDecimal order_amount) {
		this.order_amount = order_amount;
	}

	public string getOp_user_id() {
		return op_user_id;
	}

	public void setOp_user_id(string op_user_id) {
		this.op_user_id = op_user_id;
	}

	public string getRefund_fee_type() {
		return refund_fee_type;
	}

	public void setRefund_fee_type(string refund_fee_type) {
		this.refund_fee_type = refund_fee_type;
	}

	public string getSub_appid() {
		return sub_appid;
	}

	public void setSub_appid(string sub_appid) {
		this.sub_appid = sub_appid;
	}

	public string getSub_mch_id() {
		return sub_mch_id;
	}

	public void setSub_mch_id(string sub_mch_id) {
		this.sub_mch_id = sub_mch_id;
	}

	public string getRefund_account() {
		return refund_account;
	}

	public void setRefund_account(string refund_account) {
		this.refund_account = refund_account;
	}
	
	public string getSign_type() {
		return sign_type;
	}

	/**
	 * 签名类型
	 * @since 2.8.5
	 * @param sign_type HMAC-SHA256和MD5
	 */
	public void setSign_type(string sign_type) {
		this.sign_type = sign_type;
	}

	public string getNotify_url() {
		return notify_url;
	}

	public void setNotify_url(string notify_url) {
		this.notify_url = notify_url;
	}

	public string getRefund_desc() {
		return refund_desc;
	}

	public void setRefund_desc(string refund_desc) {
		this.refund_desc = refund_desc;
	}
	
}
