module hunt.wechat.bean.paymch.Pappayapply;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

/**
 * 委托代扣-扣款请求参数
 *
 * 
 */
@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Pappayapply {

    private string appid;

    private string mch_id;

    private string nonce_str;

    private string sign;

    private string body;

    private string detail;

    private string attach;

    private string out_trade_no;

    private Integer total_fee;

    private BigDecimal total_yuan;

    private string fee_type;

    private string spbill_create_ip;

    private string goods_tag;

    private string notify_url;

    private string trade_type;

    private string contract_id;

    //以下为风控字段
    private string clientip;

    private string deviceid;

    private string mobile;

    private string email;

    private string qq;

    private string openid;

    private string creid;

    private string outerid;

    private string sign_type;
    
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

    public string getDetail() {
        return detail;
    }

    public void setDetail(string detail) {
        this.detail = detail;
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

    public Integer getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(Integer total_fee) {
        this.total_fee = total_fee;
    }

    public BigDecimal getTotal_yuan() {
        return total_yuan;
    }

    public void setTotal_yuan(BigDecimal total_yuan) {
        this.total_yuan = total_yuan;
    }

    public string getFee_type() {
        return fee_type;
    }

    public void setFee_type(string fee_type) {
        this.fee_type = fee_type;
    }

    public string getSpbill_create_ip() {
        return spbill_create_ip;
    }

    public void setSpbill_create_ip(string spbill_create_ip) {
        this.spbill_create_ip = spbill_create_ip;
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

    public void setTrade_type(string trade_type) {
        this.trade_type = trade_type;
    }

    public string getContract_id() {
        return contract_id;
    }

    public void setContract_id(string contract_id) {
        this.contract_id = contract_id;
    }

    public string getClientip() {
        return clientip;
    }

    public void setClientip(string clientip) {
        this.clientip = clientip;
    }

    public string getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(string deviceid) {
        this.deviceid = deviceid;
    }

    public string getMobile() {
        return mobile;
    }

    public void setMobile(string mobile) {
        this.mobile = mobile;
    }

    public string getEmail() {
        return email;
    }

    public void setEmail(string email) {
        this.email = email;
    }

    public string getQq() {
        return qq;
    }

    public void setQq(string qq) {
        this.qq = qq;
    }

    public string getOpenid() {
        return openid;
    }

    public void setOpenid(string openid) {
        this.openid = openid;
    }

    public string getCreid() {
        return creid;
    }

    public void setCreid(string creid) {
        this.creid = creid;
    }

    public string getOuterid() {
        return outerid;
    }

    public void setOuterid(string outerid) {
        this.outerid = outerid;
    }

    public string getSign_type() {
        return sign_type;
    }

    public void setSign_type(string sign_type) {
        this.sign_type = sign_type;
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
