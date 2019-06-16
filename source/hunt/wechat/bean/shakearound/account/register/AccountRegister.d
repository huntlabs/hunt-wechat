module hunt.wechat.bean.shakearound.account.register.AccountRegister;

import hunt.collection.List;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 微信摇一摇周边－申请开通功能－请求参数
 *
 * 
 * 
 */
class AccountRegister {

    /**
     * 联系人姓名，不超过20汉字或40个英文字母
     * 必填
     */
    private string name;

    /**
     * 联系人电话
     * 必填
     */
    @JSONField(name = "phone_number")
    private string phoneNumber;

    /**
     * 联系人邮箱
     * 必填
     */
    private string email;

    /**
     * 平台定义的行业代号，具体请查看链接<a href="http://3gimg.qq.com/shake_nearby/Qualificationdocuments.html">行业代号</a>
     * 必填
     */
    @JSONField(name = "industry_id")
    private string industryId;

    /**
     * 相关资质文件的图片url，
     * 图片需先上传至微信侧服务器，用“素材管理-上传图片素材”接口上传图片，返回的图片URL再配置在此处；
     * 当不需要资质文件时，数组内可以不填写url
     * 必填
     */
    @JSONField(name = "qualification_cert_urls")
    private List!(string) qualificationCertUrls;

    /**
     * 申请理由，不超过250汉字或500个英文字母
     */
    @JSONField(name = "apply_reason")
    private string applyReason;

    /**
     * 联系人姓名，不超过20汉字或40个英文字母
     * 必填
     *
     * @return 联系人姓名
     */
    public string getName() {
        return name;
    }

    /**
     * 联系人姓名，不超过20汉字或40个英文字母
     * 必填
     *
     * @param name 联系人姓名
     */
    public void setName(string name) {
        this.name = name;
    }

    /**
     * 联系人电话
     * 必填
     *
     * @return 联系人电话
     */
    public string getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * 联系人电话
     * 必填
     *
     * @param phoneNumber 联系人电话
     */
    public void setPhoneNumber(string phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * 联系人邮箱
     * 必填
     *
     * @return 联系人邮箱
     */
    public string getEmail() {
        return email;
    }

    /**
     * 联系人邮箱
     * 必填
     *
     * @param email 联系人邮箱
     */
    public void setEmail(string email) {
        this.email = email;
    }

    /**
     * 平台定义的行业代号，具体请查看链接<a href="http://3gimg.qq.com/shake_nearby/Qualificationdocuments.html">行业代号</a>
     * 必填
     *
     * @return 平台定义的行业代号
     */
    public string getIndustryId() {
        return industryId;
    }

    /**
     * 平台定义的行业代号，具体请查看链接<a href="http://3gimg.qq.com/shake_nearby/Qualificationdocuments.html">行业代号</a>
     * 必填
     *
     * @param industryId 平台定义的行业代号
     */
    public void setIndustryId(string industryId) {
        this.industryId = industryId;
    }

    /**
     * 相关资质文件的图片url，
     * 图片需先上传至微信侧服务器，用“素材管理-上传图片素材”接口上传图片，返回的图片URL再配置在此处；
     * 当不需要资质文件时，数组内可以不填写url
     * 必填
     *
     * @return 相关资质文件的图片url
     */
    public List!(string) getQualificationCertUrls() {
        return qualificationCertUrls;
    }

    /**
     * 相关资质文件的图片url，
     * 图片需先上传至微信侧服务器，用“素材管理-上传图片素材”接口上传图片，返回的图片URL再配置在此处；
     * 当不需要资质文件时，数组内可以不填写url
     * 必填
     *
     * @param qualificationCertUrls 相关资质文件的图片url
     */
    public void setQualificationCertUrls(List!(string) qualificationCertUrls) {
        this.qualificationCertUrls = qualificationCertUrls;
    }

    /**
     * 申请理由，不超过250汉字或500个英文字母
     *
     * @return 申请理由
     */
    public string getApplyReason() {
        return applyReason;
    }

    /**
     * 申请理由，不超过250汉字或500个英文字母
     *
     * @param applyReason 申请理由
     */
    public void setApplyReason(string applyReason) {
        this.applyReason = applyReason;
    }

}
