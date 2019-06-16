module hunt.wechat.api.ShakeAroundAPI;

import java.io.File;
import hunt.Exceptions;
import hunt.io.Common;
import hunt.text.Charset;

//import org.apache.http.HttpEntity;
//import org.apache.http.client.methods.HttpPost;
//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.ContentType;
//import org.apache.http.entity.StringEntity;
//import org.apache.http.entity.mime.MultipartEntityBuilder;
//import org.apache.http.entity.mime.content.FileBody;

import hunt.logger;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.shakearound.account.auditstatus.AccountAuditStatusResult;
import hunt.wechat.bean.shakearound.account.register.AccountRegister;
import hunt.wechat.bean.shakearound.account.register.AccountRegisterResult;
import hunt.wechat.bean.shakearound.device.applyid.DeviceApplyId;
import hunt.wechat.bean.shakearound.device.applyid.DeviceApplyIdResult;
import hunt.wechat.bean.shakearound.device.applystatus.DeviceApplyStatus;
import hunt.wechat.bean.shakearound.device.applystatus.DeviceApplyStatusResult;
import hunt.wechat.bean.shakearound.device.bindlocation.DeviceBindLocation;
import hunt.wechat.bean.shakearound.device.bindlocation.DeviceBindLocationResult;
import hunt.wechat.bean.shakearound.device.bindpage.DeviceBindPage;
import hunt.wechat.bean.shakearound.device.bindpage.DeviceBindPageResult;
import hunt.wechat.bean.shakearound.device.group.add.DeviceGroupAdd;
import hunt.wechat.bean.shakearound.device.group.add.DeviceGroupAddResult;
import hunt.wechat.bean.shakearound.device.group.adddevice.DeviceGroupAddDevice;
import hunt.wechat.bean.shakearound.device.group.adddevice.DeviceGroupAddDeviceResult;
import hunt.wechat.bean.shakearound.device.group.del.DeviceGroupDelete;
import hunt.wechat.bean.shakearound.device.group.del.DeviceGroupDeleteResult;
import hunt.wechat.bean.shakearound.device.group.deletedevice.DeviceGroupDeleteDevice;
import hunt.wechat.bean.shakearound.device.group.deletedevice.DeviceGroupDeleteDeviceResult;
import hunt.wechat.bean.shakearound.device.group.getdetail.DeviceGroupGetDetail;
import hunt.wechat.bean.shakearound.device.group.getdetail.DeviceGroupGetDetailResult;
import hunt.wechat.bean.shakearound.device.group.getlist.DeviceGroupGetList;
import hunt.wechat.bean.shakearound.device.group.getlist.DeviceGroupGetListResult;
import hunt.wechat.bean.shakearound.device.group.update.DeviceGroupUpdate;
import hunt.wechat.bean.shakearound.device.group.update.DeviceGroupUpdateResult;
import hunt.wechat.bean.shakearound.device.search.DeviceSearch;
import hunt.wechat.bean.shakearound.device.search.DeviceSearchResult;
import hunt.wechat.bean.shakearound.device.update.DeviceUpdate;
import hunt.wechat.bean.shakearound.device.update.DeviceUpdateResult;
import hunt.wechat.bean.shakearound.lottery.addlotteryinfo.LotteryAddLotteryInfo;
import hunt.wechat.bean.shakearound.lottery.addlotteryinfo.LotteryAddLotteryInfoResult;
import hunt.wechat.bean.shakearound.lottery.querylottery.LotteryQueryLotteryResult;
import hunt.wechat.bean.shakearound.lottery.setprizebucket.LotterySetPrizeBucket;
import hunt.wechat.bean.shakearound.lottery.setprizebucket.LotterySetPrizeBucketResult;
import hunt.wechat.bean.shakearound.material.add.MaterialAddResult;
import hunt.wechat.bean.shakearound.material.add.MediaType;
import hunt.wechat.bean.shakearound.page.add.PageAdd;
import hunt.wechat.bean.shakearound.page.add.PageAddResult;
import hunt.wechat.bean.shakearound.page.del.PageDelete;
import hunt.wechat.bean.shakearound.page.del.PageDeleteResult;
import hunt.wechat.bean.shakearound.page.search.PageSearch;
import hunt.wechat.bean.shakearound.page.search.PageSearchResult;
import hunt.wechat.bean.shakearound.page.update.PageUpdate;
import hunt.wechat.bean.shakearound.page.update.PageUpdateResult;
import hunt.wechat.bean.shakearound.relation.search.RelationSearch;
import hunt.wechat.bean.shakearound.relation.search.RelationSearchResult;
import hunt.wechat.bean.shakearound.statistics.device.StatisticsDevice;
import hunt.wechat.bean.shakearound.statistics.device.StatisticsDeviceResult;
import hunt.wechat.bean.shakearound.statistics.devicelist.StatisticsDeviceList;
import hunt.wechat.bean.shakearound.statistics.devicelist.StatisticsDeviceListResult;
import hunt.wechat.bean.shakearound.statistics.page.StatisticsPage;
import hunt.wechat.bean.shakearound.statistics.page.StatisticsPageResult;
import hunt.wechat.bean.shakearound.statistics.pagelist.StatisticsPageList;
import hunt.wechat.bean.shakearound.statistics.pagelist.StatisticsPageListResult;
import hunt.wechat.bean.shakearound.user.getshakeinfo.UserGetShakeInfo;
import hunt.wechat.bean.shakearound.user.getshakeinfo.UserGetShakeInfoResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;
import hunt.wechat.util.StreamUtils;

/**
 * 微信摇一摇周边
 *
 * 
 */
class ShakeAroundAPI : BaseAPI {


    /**
     * 申请开通功能－查询审核状态
     *
     * @param accessToken accessToken
     * @return result
     */
    public static AccountAuditStatusResult accountAuditStatus(string accessToken) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/account/auditstatus")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken)).build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(AccountAuditStatusResult));
    }

    /**
     * 申请开通功能
     *
     * @param accessToken     accessToken
     * @param accountRegister accountRegister
     * @return result
     */
    public static AccountRegisterResult accountRegister(string accessToken,
                                                        AccountRegister accountRegister) {
        return accountRegister(accessToken,
                JsonUtil.toJSONString(accountRegister));
    }

    /**
     * 申请开通功能
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static AccountRegisterResult accountRegister(string accessToken,
                                                        string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/account/register")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(AccountRegisterResult));
    }

    /**
     * 设备管理－申请设备ID
     *
     * @param accessToken   accessToken
     * @param deviceApplyId deviceApplyId
     * @return result
     */
    public static DeviceApplyIdResult deviceApplyId(string accessToken,
                                                    DeviceApplyId deviceApplyId) {
        return deviceApplyId(accessToken, JsonUtil.toJSONString(deviceApplyId));
    }

    /**
     * 设备管理－申请设备ID
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceApplyIdResult deviceApplyId(string accessToken,
                                                    string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/applyid")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceApplyIdResult));
    }

    /**
     * 设备管理－查询设备ID申请审核状态
     *
     * @param accessToken       accessToken
     * @param deviceApplyStatus deviceApplyStatus
     * @return result
     */
    public static DeviceApplyStatusResult deviceApplyStatus(string accessToken,
                                                            DeviceApplyStatus deviceApplyStatus) {
        return deviceApplyStatus(accessToken,
                JsonUtil.toJSONString(deviceApplyStatus));
    }

    /**
     * 设备管理－查询设备ID申请审核状态
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceApplyStatusResult deviceApplyStatus(string accessToken,
                                                            string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/applystatus")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceApplyStatusResult));
    }

    /**
     * 设备管理－配置设备与(或者其它公众号的)门店的关联关系
     *
     * @param accessToken        accessToken
     * @param deviceBindLocation deviceBindLocation
     * @return result
     */
    public static DeviceBindLocationResult deviceBindLocation(
            string accessToken, DeviceBindLocation deviceBindLocation) {
        return deviceBindLocation(accessToken,
                JsonUtil.toJSONString(deviceBindLocation));
    }

    /**
     * 设备管理－配置设备与(或者其它公众号的)门店的关联关系
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceBindLocationResult deviceBindLocation(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/bindlocation")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceBindLocationResult));
    }

    /**
     * 配置设备与页面的关联关系
     *
     * @param accessToken    accessToken
     * @param deviceBindPage deviceBindPage
     * @return result
     */
    public static DeviceBindPageResult deviceBindPage(string accessToken,
                                                      DeviceBindPage deviceBindPage) {
        return deviceBindPage(accessToken,
                JsonUtil.toJSONString(deviceBindPage));
    }

    /**
     * 配置设备与页面的关联关系
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceBindPageResult deviceBindPage(string accessToken,
                                                      string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/bindpage")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceBindPageResult));
    }

    /**
     * 新增分组
     *
     * @param accessToken    accessToken
     * @param deviceGroupAdd deviceGroupAdd
     * @return result
     */
    public static DeviceGroupAddResult deviceGroupAdd(string accessToken,
                                                      DeviceGroupAdd deviceGroupAdd) {
        return deviceGroupAdd(accessToken,
                JsonUtil.toJSONString(deviceGroupAdd));
    }

    /**
     * 新增分组
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupAddResult deviceGroupAdd(string accessToken,
                                                      string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/add")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupAddResult));
    }

    /**
     * 添加设备到分组
     *
     * @param accessToken          accessToken
     * @param deviceGroupAddDevice deviceGroupAddDevice
     * @return result
     */
    public static DeviceGroupAddDeviceResult deviceGroupAddDevice(
            string accessToken, DeviceGroupAddDevice deviceGroupAddDevice) {
        return deviceGroupAddDevice(accessToken,
                JsonUtil.toJSONString(deviceGroupAddDevice));
    }

    /**
     * 添加设备到分组
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupAddDeviceResult deviceGroupAddDevice(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/adddevice")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupAddDeviceResult));
    }

    /**
     * 删除分组
     *
     * @param accessToken       accessToken
     * @param deviceGroupDelete deviceGroupDelete
     * @return result
     */
    public static DeviceGroupDeleteResult deviceGroupDelete(string accessToken,
                                                            DeviceGroupDelete deviceGroupDelete) {
        return deviceGroupDelete(accessToken,
                JsonUtil.toJSONString(deviceGroupDelete));
    }

    /**
     * 删除分组
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupDeleteResult deviceGroupDelete(string accessToken,
                                                            string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/delete")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupDeleteResult));
    }

    /**
     * 从分组中移除设备
     *
     * @param accessToken             accessToken
     * @param deviceGroupDeleteDevice deviceGroupDeleteDevice
     * @return result
     */
    public static DeviceGroupDeleteDeviceResult deviceGroupDeleteDevice(
            string accessToken, DeviceGroupDeleteDevice deviceGroupDeleteDevice) {
        return deviceGroupDeleteDevice(accessToken,
                JsonUtil.toJSONString(deviceGroupDeleteDevice));
    }

    /**
     * 从分组中移除设备
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupDeleteDeviceResult deviceGroupDeleteDevice(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/deletedevice")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupDeleteDeviceResult));
    }

    /**
     * 查询分组详情
     *
     * @param accessToken          accessToken
     * @param deviceGroupGetDetail deviceGroupGetDetail
     * @return result
     */
    public static DeviceGroupGetDetailResult deviceGroupGetDetail(
            string accessToken, DeviceGroupGetDetail deviceGroupGetDetail) {
        return deviceGroupGetDetail(accessToken,
                JsonUtil.toJSONString(deviceGroupGetDetail));
    }

    /**
     * 查询分组详情
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupGetDetailResult deviceGroupGetDetail(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/getdetail")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupGetDetailResult));
    }

    /**
     * 查询分组列表
     *
     * @param accessToken        accessToken
     * @param deviceGroupGetList deviceGroupGetList
     * @return result
     */
    public static DeviceGroupGetListResult deviceGroupGetList(
            string accessToken, DeviceGroupGetList deviceGroupGetList) {
        return deviceGroupGetList(accessToken,
                JsonUtil.toJSONString(deviceGroupGetList));
    }

    /**
     * 查询分组列表
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupGetListResult deviceGroupGetList(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/getlist")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupGetListResult));
    }

    /**
     * 编辑分组信息
     *
     * @param accessToken       accessToken
     * @param deviceGroupUpdate deviceGroupUpdate
     * @return result
     */
    public static DeviceGroupUpdateResult deviceGroupUpdate(string accessToken,
                                                            DeviceGroupUpdate deviceGroupUpdate) {
        return deviceGroupUpdate(accessToken,
                JsonUtil.toJSONString(deviceGroupUpdate));
    }

    /**
     * 编辑分组信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceGroupUpdateResult deviceGroupUpdate(string accessToken,
                                                            string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/group/update")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceGroupUpdateResult));
    }

    /**
     * 查询设备列表
     *
     * @param accessToken  accessToken
     * @param deviceSearch deviceSearch
     * @return result
     */
    public static DeviceSearchResult deviceSearch(string accessToken,
                                                  DeviceSearch deviceSearch) {
        return deviceSearch(accessToken, JsonUtil.toJSONString(deviceSearch));
    }

    /**
     * 查询设备列表
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceSearchResult deviceSearch(string accessToken,
                                                  string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/search")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceSearchResult));
    }

    /**
     * 编辑设备信息
     *
     * @param accessToken  accessToken
     * @param deviceUpdate deviceUpdate
     * @return result
     */
    public static DeviceUpdateResult deviceUpdate(string accessToken,
                                                  DeviceUpdate deviceUpdate) {
        return deviceUpdate(accessToken, JsonUtil.toJSONString(deviceUpdate));
    }

    /**
     * 编辑设备信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static DeviceUpdateResult deviceUpdate(string accessToken,
                                                  string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/device/update")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(DeviceUpdateResult));
    }

    /**
     * 摇一摇红包－创建红包活动
     *
     * @param accessToken           accessToken
     * @param lotteryAddLotteryInfo lotteryAddLotteryInfo
     * @return result
     */
    public static LotteryAddLotteryInfoResult lotteryAddLotteryInfo(
            string accessToken, LotteryAddLotteryInfo lotteryAddLotteryInfo) {
        return lotteryAddLotteryInfo(accessToken,
                JsonUtil.toJSONString(lotteryAddLotteryInfo));
    }

    /**
     * 摇一摇红包－创建红包活动
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static LotteryAddLotteryInfoResult lotteryAddLotteryInfo(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/lottery/addlotteryinfo")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(LotteryAddLotteryInfoResult));
    }

    /**
     * 摇一摇红包－红包查询接口
     *
     * @param accessToken accessToken
     * @param lotteryId   lotteryId
     * @return result
     */
    public static LotteryQueryLotteryResult lotteryQueryLottery(
            string accessToken, string lotteryId) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/lottery/querylottery")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .addParameter("lottery_id", lotteryId).build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(LotteryQueryLotteryResult));
    }

    /**
     * 摇一摇红包－设置红包活动抽奖开关
     *
     * @param accessToken accessToken
     * @param lotteryId   lotteryId
     * @param onoff       onoff
     * @return result
     */
    public static BaseResult lotterySetLotterySwitch(string accessToken,
                                                     string lotteryId, int onoff) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/lottery/setlotteryswitch")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .addParameter("lottery_id", lotteryId)
                .addParameter("onoff", "" + onoff).build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(BaseResult));
    }

    /**
     * 摇一摇红包－录入红包信息
     *
     * @param accessToken           accessToken
     * @param lotterySetPrizeBucket lotterySetPrizeBucket
     * @return result
     */
    public static LotterySetPrizeBucketResult lotterySetPrizeBucket(
            string accessToken, LotterySetPrizeBucket lotterySetPrizeBucket) {
        return lotterySetPrizeBucket(accessToken,
                JsonUtil.toJSONString(lotterySetPrizeBucket));
    }

    /**
     * 摇一摇红包－录入红包信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static LotterySetPrizeBucketResult lotterySetPrizeBucket(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/lottery/setprizebucket")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(LotterySetPrizeBucketResult));
    }

    /**
     * 上传图片素材
     *
     * @param accessToken accessToken
     * @param type        type
     * @param media       media
     * @return result
     */
    public static MaterialAddResult materialAdd(string accessToken,
                                                MediaType type, File media) {
        HttpPost httpPost = new HttpPost(BASE_URI + "/shakearound/material/add");
        FileBody bin = new FileBody(media);
        MultipartEntityBuilder multipartEntityBuilder = MultipartEntityBuilder
                .create().addPart("media", bin);
        HttpEntity reqEntity = multipartEntityBuilder
                .addTextBody(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .addTextBody("type", type.name()).build();
        httpPost.setEntity(reqEntity);
        return LocalHttpClient.executeJsonResult(httpPost,
                typeid(MaterialAddResult));
    }

    /**
     * 上传图片素材
     *
     * @param accessToken accessToken
     * @param type        Icon：摇一摇页面展示的icon图；License：申请开通摇一摇周边功能时需上传的资质文件；若不传type，则默认type=icon
     * @param inputStream inputStream
     * @return result
     */
    public static MaterialAddResult materialAdd(string accessToken,
                                                MediaType type, InputStream inputStream) {
        HttpPost httpPost = new HttpPost(BASE_URI + "/shakearound/material/add");
        byte[] data;
        try {
            data = StreamUtils.copyToByteArray(inputStream);
        } catch (IOException e) {
            logger.error("", e);
            throw new RuntimeException(e);
        }

        MultipartEntityBuilder multipartEntityBuilder = MultipartEntityBuilder
                .create().addBinaryBody("media", data, ContentType.DEFAULT_BINARY, "temp." + type.fileSuffix());
        HttpEntity reqEntity = multipartEntityBuilder
                .addTextBody(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .addTextBody("type", type.uploadType()).build();
        httpPost.setEntity(reqEntity);

        return LocalHttpClient.executeJsonResult(httpPost,
                typeid(MaterialAddResult));
    }

    /**
     * 页面管理－新增页面
     *
     * @param accessToken accessToken
     * @param pageAdd     pageAdd
     * @return result
     */
    public static PageAddResult pageAdd(string accessToken, PageAdd pageAdd) {
        return pageAdd(accessToken, JsonUtil.toJSONString(pageAdd));
    }

    /**
     * 页面管理－新增页面
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static PageAddResult pageAdd(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/page/add")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(PageAddResult));
    }

    /**
     * 页面管理－删除页面
     *
     * @param accessToken accessToken
     * @param pageDelete  pageDelete
     * @return result
     */
    public static PageDeleteResult pageDelete(string accessToken,
                                              PageDelete pageDelete) {
        return pageDelete(accessToken, JsonUtil.toJSONString(pageDelete));
    }

    /**
     * 页面管理－删除页面
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static PageDeleteResult pageDelete(string accessToken,
                                              string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/page/delete")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(PageDeleteResult));
    }

    /**
     * 页面管理－查询页面列表
     *
     * @param accessToken accessToken
     * @param pageSearch  pageSearch
     * @return result
     */
    public static PageSearchResult pageSearch(string accessToken,
                                              PageSearch pageSearch) {
        return pageSearch(accessToken, JsonUtil.toJSONString(pageSearch));
    }

    /**
     * 页面管理－查询页面列表
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static PageSearchResult pageSearch(string accessToken,
                                              string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/page/search")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(PageSearchResult));
    }

    /**
     * 页面管理－编辑页面信息
     *
     * @param accessToken accessToken
     * @param pageUpdate  pageUpdate
     * @return result
     */
    public static PageUpdateResult pageUpdate(string accessToken,
                                              PageUpdate pageUpdate) {
        return pageUpdate(accessToken, JsonUtil.toJSONString(pageUpdate));
    }

    /**
     * 页面管理－编辑页面信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static PageUpdateResult pageUpdate(string accessToken,
                                              string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/page/update")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(PageUpdateResult));
    }

    /**
     * 查询设备与页面的关联关系
     *
     * @param accessToken    accessToken
     * @param relationSearch relationSearch
     * @return result
     */
    public static RelationSearchResult relationSearch(string accessToken,
                                                      RelationSearch relationSearch) {
        return relationSearch(accessToken,
                JsonUtil.toJSONString(relationSearch));
    }

    /**
     * 查询设备与页面的关联关系
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static RelationSearchResult relationSearch(string accessToken,
                                                      string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/relation/search")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(RelationSearchResult));
    }

    /**
     * 以设备为维度的数据统计接口
     *
     * @param accessToken      accessToken
     * @param statisticsDevice statisticsDevice
     * @return result
     */
    public static StatisticsDeviceResult statisticsDevice(string accessToken,
                                                          StatisticsDevice statisticsDevice) {
        return statisticsDevice(accessToken,
                JsonUtil.toJSONString(statisticsDevice));
    }

    /**
     * 以设备为维度的数据统计接口
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static StatisticsDeviceResult statisticsDevice(string accessToken,
                                                          string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/statistics/device")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(StatisticsDeviceResult));
    }

    /**
     * 批量查询设备统计数据接口
     *
     * @param accessToken          accessToken
     * @param statisticsDeviceList statisticsDeviceList
     * @return result
     */
    public static StatisticsDeviceListResult statisticsDeviceList(
            string accessToken, StatisticsDeviceList statisticsDeviceList) {
        return statisticsDeviceList(accessToken,
                JsonUtil.toJSONString(statisticsDeviceList));
    }

    /**
     * 批量查询设备统计数据接口
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static StatisticsDeviceListResult statisticsDeviceList(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/statistics/devicelist")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(StatisticsDeviceListResult));
    }

    /**
     * 以页面为维度的数据统计接口
     *
     * @param accessToken    accessToken
     * @param statisticsPage statisticsPage
     * @return result
     */
    public static StatisticsPageResult statisticsPage(string accessToken,
                                                      StatisticsPage statisticsPage) {
        return statisticsPage(accessToken,
                JsonUtil.toJSONString(statisticsPage));
    }

    /**
     * 以页面为维度的数据统计接口
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static StatisticsPageResult statisticsPage(string accessToken,
                                                      string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/statistics/page")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(StatisticsPageResult));
    }

    /**
     * 批量查询页面统计数据接口
     *
     * @param accessToken        accessToken
     * @param statisticsPageList statisticsPageList
     * @return result
     */
    public static StatisticsPageListResult statisticsPageList(
            string accessToken, StatisticsPageList statisticsPageList) {
        return statisticsPageList(accessToken,
                JsonUtil.toJSONString(statisticsPageList));
    }

    /**
     * 批量查询页面统计数据接口
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static StatisticsPageListResult statisticsPageList(
            string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/statistics/pagelist")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(StatisticsPageListResult));
    }

    /**
     * 获取设备及用户信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return result
     */
    public static UserGetShakeInfoResult userGetShakeInfo(string accessToken,
                                                          string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder
                .post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/shakearound/user/getshakeinfo")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                typeid(UserGetShakeInfoResult));
    }

    /**
     * 获取设备及用户信息
     *
     * @param accessToken      accessToken
     * @param userGetShakeInfo userGetShakeInfo
     * @return result
     */
    public static UserGetShakeInfoResult userGetShakeInfo(string accessToken,
                                                          UserGetShakeInfo userGetShakeInfo) {
        return userGetShakeInfo(accessToken,
                JsonUtil.toJSONString(userGetShakeInfo));
    }
}
