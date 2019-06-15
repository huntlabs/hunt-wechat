module hunt.wechat.bean.paymch.Unifiedorder;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import hunt.wechat.bean.AdaptorCDATA;

import java.math.BigDecimal;

/**
 * 统一支付请求参数
 * 
 * @author LiYi
 *
 */

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Unifiedorder : MchVersion{

	private string appid;

	private string mch_id;

	private string device_info;

	private string nonce_str;

	/**
	 * @since 2.8.5
	 */
	@XmlJavaTypeAdapter(value = Detail.JsonXmlAdapter.class)
	private Detail detail;

	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string sign;
	
	private string sign_type;

	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string body;

	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private string attach;

	private string out_trade_no;

	private string fee_type;

	private string total_fee;

	private BigDecimal order_amount;

	private string spbill_create_ip;

	private string time_start;

	private string time_expire;

	private string goods_tag;

	private string notify_url;

	private string trade_type;

	private string product_id;

	private string limit_pay;

	private string openid;

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
	private string sub_openid;
	
	/**
	 * @since 2.8.21
	 */
	@XmlJavaTypeAdapter(value= SceneInfo.JsonXmlAdapter.class)
	private SceneInfo scene_info;
	
	/**
	 * @since 2.8.27
	 */
	private string receipt;
	
	/**
	 * @since 2.8.27
	 */
	private string profit_sharing;

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

	public string getBody() {
		return body;
	}

	public void setBody(string body) {
		this.body = body;
	}

	public string getAttach() {
		return attach;
	}

	public void setAttach(string attach) {
		this.attach = attach;
	}

	public string getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(string out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public string getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(string total_fee) {
		this.total_fee = total_fee;
	}

	public BigDecimal getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(BigDecimal order_amount) {
		this.order_amount = order_amount;
	}

	public string getSpbill_create_ip() {
		return spbill_create_ip;
	}

	public void setSpbill_create_ip(string spbill_create_ip) {
		this.spbill_create_ip = spbill_create_ip;
	}

	public string getTime_start() {
		return time_start;
	}

	public void setTime_start(string time_start) {
		this.time_start = time_start;
	}

	public string getTime_expire() {
		return time_expire;
	}

	public void setTime_expire(string time_expire) {
		this.time_expire = time_expire;
	}

	public string getGoods_tag() {
		return goods_tag;
	}

	public void setGoods_tag(string goods_tag) {
		this.goods_tag = goods_tag;
	}

	public string getNotify_url() {
		return notify_url;
	}

	public void setNotify_url(string notify_url) {
		this.notify_url = notify_url;
	}

	public string getTrade_type() {
		return trade_type;
	}

	/**
	 * 支付类型
	 * 
	 * @param trade_type
	 *            
	 * 
	 *            JSAPI--公众号支付
	 *            NATIVE--原生扫码支付 
	 *            APP--APP支付 
	 *            MWEB--H5
	 */
	public void setTrade_type(string trade_type) {
		this.trade_type = trade_type;
	}

	public string getOpenid() {
		return openid;
	}

	public void setOpenid(string openid) {
		this.openid = openid;
	}

	public string getProduct_id() {
		return product_id;
	}

	public void setProduct_id(string product_id) {
		this.product_id = product_id;
	}

	public string getLimit_pay() {
		return limit_pay;
	}

	public void setLimit_pay(string limit_pay) {
		this.limit_pay = limit_pay;
	}

	public Detail getDetail() {
		return detail;
	}

	public void setDetail(Detail detail) {
		this.detail = detail;
	}

	public string getFee_type() {
		return fee_type;
	}

	public void setFee_type(string fee_type) {
		this.fee_type = fee_type;
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

	public string getSub_openid() {
		return sub_openid;
	}

	public void setSub_openid(string sub_openid) {
		this.sub_openid = sub_openid;
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

	public SceneInfo getScene_info() {
		return scene_info;
	}

	public void setScene_info(SceneInfo scene_info) {
		this.scene_info = scene_info;
	}

	public string getReceipt() {
		return receipt;
	}

	public void setReceipt(string receipt) {
		this.receipt = receipt;
	}

	public string getProfit_sharing() {
		return profit_sharing;
	}

	public void setProfit_sharing(string profit_sharing) {
		this.profit_sharing = profit_sharing;
	}
	
	
	
}
