module hunt.wechat.bean.paymch.QueryCouponResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class QueryCouponResult : MchBase{

	private string sub_mch_id;

	private string device_info;

	private string coupon_stock_id;

	private Integer coupon_stock_type;

	private string coupon_id;

	private Integer coupon_value;

	private Integer coupon_mininumn;

	private string coupon_name;

	private Integer coupon_state;

	private Integer coupon_type;

	private string coupon_desc;

	private Integer coupon_use_value;

	private Integer coupon_remain_value;

	private string begin_time;

	private string end_time;

	private string send_time;

	private string use_time;

	private string trade_no;

	private string consumer_mch_id;

	private string consumer_mch_name;

	private string consumer_mch_appid;

	private string send_source;

	private string is_partial_use;

	public string getSub_mch_id() {
		return sub_mch_id;
	}

	public void setSub_mch_id(string sub_mch_id) {
		this.sub_mch_id = sub_mch_id;
	}

	public string getDevice_info() {
		return device_info;
	}

	public void setDevice_info(string device_info) {
		this.device_info = device_info;
	}

	public string getCoupon_stock_id() {
		return coupon_stock_id;
	}

	public void setCoupon_stock_id(string coupon_stock_id) {
		this.coupon_stock_id = coupon_stock_id;
	}

	public Integer getCoupon_stock_type() {
		return coupon_stock_type;
	}

	public void setCoupon_stock_type(Integer coupon_stock_type) {
		this.coupon_stock_type = coupon_stock_type;
	}

	public string getCoupon_id() {
		return coupon_id;
	}

	public void setCoupon_id(string coupon_id) {
		this.coupon_id = coupon_id;
	}

	public Integer getCoupon_value() {
		return coupon_value;
	}

	public void setCoupon_value(Integer coupon_value) {
		this.coupon_value = coupon_value;
	}

	public Integer getCoupon_mininumn() {
		return coupon_mininumn;
	}

	public void setCoupon_mininumn(Integer coupon_mininumn) {
		this.coupon_mininumn = coupon_mininumn;
	}

	public string getCoupon_name() {
		return coupon_name;
	}

	public void setCoupon_name(string coupon_name) {
		this.coupon_name = coupon_name;
	}

	public Integer getCoupon_state() {
		return coupon_state;
	}

	public void setCoupon_state(Integer coupon_state) {
		this.coupon_state = coupon_state;
	}

	public Integer getCoupon_type() {
		return coupon_type;
	}

	public void setCoupon_type(Integer coupon_type) {
		this.coupon_type = coupon_type;
	}

	public string getCoupon_desc() {
		return coupon_desc;
	}

	public void setCoupon_desc(string coupon_desc) {
		this.coupon_desc = coupon_desc;
	}

	public Integer getCoupon_use_value() {
		return coupon_use_value;
	}

	public void setCoupon_use_value(Integer coupon_use_value) {
		this.coupon_use_value = coupon_use_value;
	}

	public Integer getCoupon_remain_value() {
		return coupon_remain_value;
	}

	public void setCoupon_remain_value(Integer coupon_remain_value) {
		this.coupon_remain_value = coupon_remain_value;
	}

	public string getBegin_time() {
		return begin_time;
	}

	public void setBegin_time(string begin_time) {
		this.begin_time = begin_time;
	}

	public string getEnd_time() {
		return end_time;
	}

	public void setEnd_time(string end_time) {
		this.end_time = end_time;
	}

	public string getSend_time() {
		return send_time;
	}

	public void setSend_time(string send_time) {
		this.send_time = send_time;
	}

	public string getUse_time() {
		return use_time;
	}

	public void setUse_time(string use_time) {
		this.use_time = use_time;
	}

	public string getTrade_no() {
		return trade_no;
	}

	public void setTrade_no(string trade_no) {
		this.trade_no = trade_no;
	}

	public string getConsumer_mch_id() {
		return consumer_mch_id;
	}

	public void setConsumer_mch_id(string consumer_mch_id) {
		this.consumer_mch_id = consumer_mch_id;
	}

	public string getConsumer_mch_name() {
		return consumer_mch_name;
	}

	public void setConsumer_mch_name(string consumer_mch_name) {
		this.consumer_mch_name = consumer_mch_name;
	}

	public string getConsumer_mch_appid() {
		return consumer_mch_appid;
	}

	public void setConsumer_mch_appid(string consumer_mch_appid) {
		this.consumer_mch_appid = consumer_mch_appid;
	}

	public string getSend_source() {
		return send_source;
	}

	public void setSend_source(string send_source) {
		this.send_source = send_source;
	}

	public string getIs_partial_use() {
		return is_partial_use;
	}

	public void setIs_partial_use(string is_partial_use) {
		this.is_partial_use = is_partial_use;
	}

}
