module hunt.wechat.api.ScanAPI;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;
import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.scan.base.ProductGet;
import hunt.wechat.bean.scan.crud.*;
import hunt.wechat.bean.scan.result.*;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

import hunt.text.Charset;

/**
 * 微信扫一扫
 *
 * @author swang
 * @since 2.8.22
 */
public class ScanAPI : BaseAPI {

    /**
     * 获取商户信息
     *
     * @param accessToken accessToken
     * @return MerchantinfoGetResult
     */
    public static MerchantinfoGetResult merchantinfoGet(string accessToken) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/merchantinfo/get")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                MerchantinfoGetResult.class);
    }

    /**
     * 创建商品
     *
     * @param accessToken   accessToken
     * @param productCreate productCreate
     * @return ProductCreateResult
     */
    public static ProductCreateResult productCreate(string accessToken, ProductCreate productCreate) {
        return productCreate(accessToken, JsonUtil.toJSONString(productCreate));
    }

    /**
     * 创建商品
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return ProductCreateResult
     */
    public static ProductCreateResult productCreate(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/create")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                ProductCreateResult.class);
    }

    /**
     * 商品发布
     *
     * @param accessToken   accessToken
     * @param productStatus productStatus
     * @return BaseResult
     */
    public static BaseResult productModstatus(string accessToken, ProductStatus productStatus) {
        return productModstatus(accessToken, JsonUtil.toJSONString(productStatus));
    }

    /**
     * 商品发布
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return BaseResult
     */
    public static BaseResult productModstatus(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/modstatus")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                BaseResult.class);
    }

    /**
     * 设置测试人员白名单
     *
     * @param accessToken accessToken
     * @param whiteUsers  whiteUsers
     * @return BaseResult
     */
    public static BaseResult testwhitelistSet(string accessToken, WhiteUsers whiteUsers) {
        return testwhitelistSet(accessToken, JsonUtil.toJSONString(whiteUsers));
    }

    /**
     * 设置测试人员白名单
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return BaseResult
     */
    public static BaseResult testwhitelistSet(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/testwhitelist/set")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                BaseResult.class);
    }

    /**
     * 获取商品二维码
     *
     * @param accessToken      accessToken
     * @param productGetqrcode productGetqrcode
     * @return ProductGetqrcodeResult
     */
    public static ProductGetqrcodeResult productGetqrcode(string accessToken, ProductGetqrcode productGetqrcode) {
        return productGetqrcode(accessToken, JsonUtil.toJSONString(productGetqrcode));
    }

    /**
     * 获取商品二维码
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return ProductGetqrcodeResult
     */
    public static ProductGetqrcodeResult productGetqrcode(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/getqrcode")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                ProductGetqrcodeResult.class);
    }

    /**
     * 查询商品信息
     *
     * @param accessToken accessToken
     * @param productGet  productGet
     * @return ProductGetResult
     */
    public static ProductGetResult productGet(string accessToken, ProductGet productGet) {
        return productGet(accessToken, JsonUtil.toJSONString(productGet));
    }

    /**
     * 查询商品信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return ProductGetResult
     */
    public static ProductGetResult productGet(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/get")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                ProductGetResult.class);
    }

    /**
     * 批量查询商品信息
     *
     * @param accessToken    accessToken
     * @param productGetlist productGetlist
     * @return ProductGetlistResult
     */
    public static ProductGetlistResult productGetlist(string accessToken, ProductGetlist productGetlist) {
        return productGetlist(accessToken, JsonUtil.toJSONString(productGetlist));
    }

    /**
     * 批量查询商品信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return ProductGetlistResult
     */
    public static ProductGetlistResult productGetlist(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/getlist")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                ProductGetlistResult.class);
    }

    /**
     * 更新商品信息
     *
     * @param accessToken   accessToken
     * @param productUpdate productUpdate
     * @return ProductCreateResult
     */
    public static ProductCreateResult productUpdate(string accessToken, ProductUpdate productUpdate) {
        return productUpdate(accessToken, JsonUtil.toJSONString(productUpdate));
    }

    /**
     * 更新商品信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return ProductCreateResult
     */
    public static ProductCreateResult productUpdate(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/update")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                ProductCreateResult.class);
    }

    /**
     * 清除商品信息
     *
     * @param accessToken accessToken
     * @param productGet  productGet
     * @return BaseResult
     */
    public static BaseResult productClear(string accessToken, ProductGet productGet) {
        return productClear(accessToken, JsonUtil.toJSONString(productGet));
    }

    /**
     * 清除商品信息
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return BaseResult
     */
    public static BaseResult productClear(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/product/clear")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                BaseResult.class);
    }

    /**
     * 检查wxticket参数
     *
     * @param accessToken accessToken
     * @param ticket      ticket
     * @return TicketCheckResult
     */
    public static TicketCheckResult ticketCheck(string accessToken, string ticket) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/scanticket/check")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .addParameter("ticket", ticket)
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                TicketCheckResult.class);
    }

    /**
     * 清除扫码记录
     *
     * @param accessToken accessToken
     * @param ticketCheck ticketCheck
     * @return BaseResult
     */
    public static BaseResult clearTicketCheck(string accessToken, TicketCheck ticketCheck) {
        return clearTicketCheck(accessToken, JsonUtil.toJSONString(ticketCheck));
    }

    /**
     * 清除扫码记录
     *
     * @param accessToken accessToken
     * @param postJson    postJson
     * @return BaseResult
     */
    public static BaseResult clearTicketCheck(string accessToken, string postJson) {
        HttpUriRequest httpUriRequest = RequestBuilder.post()
                .setHeader(jsonHeader)
                .setUri(BASE_URI + "/scan/scanticket/check")
                .addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
                .setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
                .build();
        return LocalHttpClient.executeJsonResult(httpUriRequest,
                BaseResult.class);
    }
}
