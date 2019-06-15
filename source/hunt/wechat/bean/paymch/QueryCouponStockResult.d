module hunt.wechat.bean.paymch.QueryCouponStockResult;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 关闭订单
 * @author Yi
 *
 */
@XmlRootElement(name="xml")
@XmlAccessorType(XmlAccessType.FIELD)
class QueryCouponStockResult : MchBase{

	private string sub_mch_id;

	private string device_info;

	private string coupon_stock_id;

	private string coupon_name;

	private Integer coupon_value;

	private Integer coupon_mininumn;

	private Integer coupon_type;

	private Integer coupon_stock_status;

	private Integer coupon_total;

	private Integer max_quota;

	private Integer locked_num;

	private Integer used_num;

	private Integer is_send_num;

	private string begin_time;

	private string end_time;

	private string create_time;

	private Integer coupon_budget;

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

	public string getCoupon_name() {
		return coupon_name;
	}

	public void setCoupon_name(string coupon_name) {
		this.coupon_name = coupon_name;
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

	public Integer getCoupon_type() {
		return coupon_type;
	}

	public void setCoupon_type(Integer coupon_type) {
		this.coupon_type = coupon_type;
	}

	public Integer getCoupon_stock_status() {
		return coupon_stock_status;
	}

	public void setCoupon_stock_status(Integer coupon_stock_status) {
		this.coupon_stock_status = coupon_stock_status;
	}

	public Integer getCoupon_total() {
		return coupon_total;
	}

	public void setCoupon_total(Integer coupon_total) {
		this.coupon_total = coupon_total;
	}

	public Integer getMax_quota() {
		return max_quota;
	}

	public void setMax_quota(Integer max_quota) {
		this.max_quota = max_quota;
	}

	public Integer getLocked_num() {
		return locked_num;
	}

	public void setLocked_num(Integer locked_num) {
		this.locked_num = locked_num;
	}

	public Integer getUsed_num() {
		return used_num;
	}

	public void setUsed_num(Integer used_num) {
		this.used_num = used_num;
	}

	public Integer getIs_send_num() {
		return is_send_num;
	}

	public void setIs_send_num(Integer is_send_num) {
		this.is_send_num = is_send_num;
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

	public string getCreate_time() {
		return create_time;
	}

	public void setCreate_time(string create_time) {
		this.create_time = create_time;
	}

	public Integer getCoupon_budget() {
		return coupon_budget;
	}

	public void setCoupon_budget(Integer coupon_budget) {
		this.coupon_budget = coupon_budget;
	}





}
