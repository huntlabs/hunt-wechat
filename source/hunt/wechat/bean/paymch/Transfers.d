module hunt.wechat.bean.paymch.Transfers;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
class Transfers {

    private string mch_appid;

    private string mchid;

    private string device_info;

    private string nonce_str;

    private string sign;

    private string partner_trade_no;

    private string openid;

    private string check_name;

    private string re_user_name;

    private Integer amount;

    private BigDecimal yuan_amount;

    private string desc;

    private string spbill_create_ip;

    private string sign_type;

    public string getMch_appid() {
        return mch_appid;
    }

    public void setMch_appid(string mch_appid) {
        this.mch_appid = mch_appid;
    }

    public string getMchid() {
        return mchid;
    }

    public void setMchid(string mchid) {
        this.mchid = mchid;
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

    public string getPartner_trade_no() {
        return partner_trade_no;
    }

    public void setPartner_trade_no(string partner_trade_no) {
        this.partner_trade_no = partner_trade_no;
    }

    public string getOpenid() {
        return openid;
    }

    public void setOpenid(string openid) {
        this.openid = openid;
    }

    public string getCheck_name() {
        return check_name;
    }

    public void setCheck_name(string check_name) {
        this.check_name = check_name;
    }

    public string getRe_user_name() {
        return re_user_name;
    }

    public void setRe_user_name(string re_user_name) {
        this.re_user_name = re_user_name;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getYuan_amount() {
        return yuan_amount;
    }

    public void setYuan_amount(BigDecimal yuan_amount) {
        this.yuan_amount = yuan_amount;
    }

    public string getDesc() {
        return desc;
    }

    public void setDesc(string desc) {
        this.desc = desc;
    }

    public string getSpbill_create_ip() {
        return spbill_create_ip;
    }

    public void setSpbill_create_ip(string spbill_create_ip) {
        this.spbill_create_ip = spbill_create_ip;
    }

    public string getSign_type() {
        return sign_type;
    }

    public void setSign_type(string sign_type) {
        this.sign_type = sign_type;
    }

}
