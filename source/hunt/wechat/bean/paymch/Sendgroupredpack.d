module hunt.wechat.bean.paymch.Sendgroupredpack;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

@XmlRootElement(name = "xml")
@XmlAccessorType(XmlAccessType.FIELD)
public class Sendgroupredpack {

    private string nonce_str;

    private string sign;

    private string mch_billno;

    private string mch_id;

    private string sub_mch_id;

    private string msgappid;        //触达用户appid 服务商模式下触达用户时的appid(可填服务商自己的appid或子商户的appid)，服务商模式下必填，服务商模式下填入的子商户appid必须在微信支付商户平台中先录入，否则会校验不过。

    private string wxappid;

    private string send_name;

    private string re_openid;

    private Integer total_amount;

    private BigDecimal yuan_total_amount;

    private Integer total_num;

    private string amt_type;

    private string wishing;

    private string act_name;

    private string remark;

    private string scene_id;		/*场景id
									发放红包使用场景，红包金额大于200时必传
									PRODUCT_1:商品促销
									PRODUCT_2:抽奖
									PRODUCT_3:虚拟物品兑奖 
									PRODUCT_4:企业内部福利
									PRODUCT_5:渠道分润
									PRODUCT_6:保险回馈
									PRODUCT_7:彩票派奖
									PRODUCT_8:税务刮奖*/
    private string risk_info;	 	/*活动信息
									posttime:用户操作的时间戳
									mobile:业务系统账号的手机号，国家代码-手机号。不需要+号
									deviceid :mac 地址或者设备唯一标识 
									clientversion :用户操作的客户端版本
									把值为非空的信息用key=value进行拼接，再进行urlencode
									urlencode(posttime=xx& mobile =xx&deviceid=xx)*/

    private string consume_mch_id;	/*资金授权商户号
									资金授权商户号服务商替特约商户发放时使用*/

    private string sign_type;

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

    public string getMch_billno() {
        return mch_billno;
    }

    public void setMch_billno(string mch_billno) {
        this.mch_billno = mch_billno;
    }

    public string getMch_id() {
        return mch_id;
    }

    public void setMch_id(string mch_id) {
        this.mch_id = mch_id;
    }

    public string getSub_mch_id() {
        return sub_mch_id;
    }

    public void setSub_mch_id(string sub_mch_id) {
        this.sub_mch_id = sub_mch_id;
    }

    public string getWxappid() {
        return wxappid;
    }

    public void setWxappid(string wxappid) {
        this.wxappid = wxappid;
    }

    public string getSend_name() {
        return send_name;
    }

    public void setSend_name(string send_name) {
        this.send_name = send_name;
    }

    public string getRe_openid() {
        return re_openid;
    }

    public void setRe_openid(string re_openid) {
        this.re_openid = re_openid;
    }

    public Integer getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(Integer total_amount) {
        this.total_amount = total_amount;
    }

    public BigDecimal getYuan_total_amount() {
        return yuan_total_amount;
    }

    public void setYuan_total_amount(BigDecimal yuan_total_amount) {
        this.yuan_total_amount = yuan_total_amount;
    }

    public Integer getTotal_num() {
        return total_num;
    }

    public void setTotal_num(Integer total_num) {
        this.total_num = total_num;
    }

    public string getAmt_type() {
        return amt_type;
    }

    public void setAmt_type(string amt_type) {
        this.amt_type = amt_type;
    }

    public string getWishing() {
        return wishing;
    }

    public void setWishing(string wishing) {
        this.wishing = wishing;
    }

    public string getAct_name() {
        return act_name;
    }

    public void setAct_name(string act_name) {
        this.act_name = act_name;
    }

    public string getRemark() {
        return remark;
    }

    public void setRemark(string remark) {
        this.remark = remark;
    }

    public string getMsgappid() {
        return msgappid;
    }

    public void setMsgappid(string msgappid) {
        this.msgappid = msgappid;
    }

    public string getScene_id() {
        return scene_id;
    }

    public void setScene_id(string scene_id) {
        this.scene_id = scene_id;
    }

    public string getRisk_info() {
        return risk_info;
    }

    public void setRisk_info(string risk_info) {
        this.risk_info = risk_info;
    }

    public string getConsume_mch_id() {
        return consume_mch_id;
    }

    public void setConsume_mch_id(string consume_mch_id) {
        this.consume_mch_id = consume_mch_id;
    }

    public string getSign_type() {
        return sign_type;
    }

    public void setSign_type(string sign_type) {
        this.sign_type = sign_type;
    }

}
