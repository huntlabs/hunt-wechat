module hunt.wechat.api.CardAPI;

import hunt.text.Charset;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;
//import org.apache.http.entity.StringEntity;

import hunt.wechat.bean.BaseResult;
import hunt.wechat.bean.card.CardType;
import hunt.wechat.bean.card.CashCard;
import hunt.wechat.bean.card.DiscountCard;
import hunt.wechat.bean.card.GeneralCouponCard;
import hunt.wechat.bean.card.GiftCard;
import hunt.wechat.bean.card.GrouponCard;
import hunt.wechat.bean.card.batchget.BatchGet;
import hunt.wechat.bean.card.batchget.BatchGetResult;
import hunt.wechat.bean.card.code.checkcode.CodeCheckCode;
import hunt.wechat.bean.card.code.checkcode.CodeCheckCodeResult;
import hunt.wechat.bean.card.code.consume.CodeConsume;
import hunt.wechat.bean.card.code.consume.CodeConsumeResult;
import hunt.wechat.bean.card.code.decrypt.CodeDecrypt;
import hunt.wechat.bean.card.code.decrypt.CodeDecryptResult;
import hunt.wechat.bean.card.code.deposit.CodeDeposit;
import hunt.wechat.bean.card.code.deposit.CodeDepositResult;
import hunt.wechat.bean.card.code.get.CodeGet;
import hunt.wechat.bean.card.code.get.CodeGetResult;
import hunt.wechat.bean.card.code.getdepositcount.CodeGetDepositCount;
import hunt.wechat.bean.card.code.getdepositcount.CodeGetDepositCountResult;
import hunt.wechat.bean.card.code.unavailable.CodeUnavailable;
import hunt.wechat.bean.card.code.update.CodeUpdate;
import hunt.wechat.bean.card.create.Create;
import hunt.wechat.bean.card.create.CreateResult;
import hunt.wechat.bean.card.get.AbstractResult;
import hunt.wechat.bean.card.get.GetCashResult;
import hunt.wechat.bean.card.get.GetDiscountResult;
import hunt.wechat.bean.card.get.GetGeneralCouponResult;
import hunt.wechat.bean.card.get.GetGrouponResult;
import hunt.wechat.bean.card.get.GetResult;
import hunt.wechat.bean.card.landingpage.create.LandingPageCreate;
import hunt.wechat.bean.card.landingpage.create.LandingPageCreateResult;
import hunt.wechat.bean.card.modifystock.ModifyStock;
import hunt.wechat.bean.card.mpnews.gethtml.MpNewsGetHtml;
import hunt.wechat.bean.card.mpnews.gethtml.MpNewsGetHtmlResult;
import hunt.wechat.bean.card.paycell.set.PaySellSet;
import hunt.wechat.bean.card.qrcode.create.QrCodeCreate;
import hunt.wechat.bean.card.qrcode.create.QrCodeCreateMultiple;
import hunt.wechat.bean.card.qrcode.create.QrCodeCreateResult;
import hunt.wechat.bean.card.testwhitelist.set.TestWhiteListSet;
import hunt.wechat.bean.card.update.UpdateCash;
import hunt.wechat.bean.card.update.UpdateDiscount;
import hunt.wechat.bean.card.update.UpdateGeneralCoupon;
import hunt.wechat.bean.card.update.UpdateGift;
import hunt.wechat.bean.card.update.UpdateGroupon;
import hunt.wechat.bean.card.update.UpdateResult;
import hunt.wechat.bean.card.user.getcardlist.UserGetCardList;
import hunt.wechat.bean.card.user.getcardlist.UserGetCardListResult;
import hunt.wechat.client.LocalHttpClient;
import hunt.wechat.util.JsonUtil;

/**
 * 微信卡券
 * 
 * 
 *
 */
class CardAPI : BaseAPI {

	/**
	 * 批量查询卡券列表
	 * @param accessToken accessToken
	 * @param batchget batchget
	 * @return result
	 */
	public static BatchGetResult batchGet(string accessToken, BatchGet batchget) {
		return batchGet(accessToken, JsonUtil.toJSONString(batchget));
	}

	/**
	 * 批量查询卡券列表
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BatchGetResult batchGet(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/batchget")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BatchGetResult));
	}

	/**
	 * 核查code
	 * @param accessToken accessToken
	 * @param codeCheck codeCheck
	 * @return result
	 */
	public static CodeCheckCodeResult codeCheckCode(string accessToken, CodeCheckCode codeCheck) {
		return codeCheckCode(accessToken, JsonUtil.toJSONString(codeCheck));
	}

	/**
	 * 核查code
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static CodeCheckCodeResult codeCheckCode(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/checkcode")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeCheckCodeResult));
	}

	/**
	 * 核销Code
	 * @param accessToken accessToken
	 * @param codeConsume codeConsume
	 * @return result
	 */
	public static CodeConsumeResult codeConsume(string accessToken, CodeConsume codeConsume) {
		return codeConsume(accessToken, JsonUtil.toJSONString(codeConsume));
	}

	/**
	 * 核销Code
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static CodeConsumeResult codeConsume(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/consume")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeConsumeResult));
	}

	/**
	 * Code解码
	 * 1.只能解码本公众号卡券获取的加密code。 
	 * 2.开发者若从url上获取到加密code,请注意先进行urldecode，否则报错。
	 * 3.encrypt_code是卡券的code码经过加密处理得到的加密code码，与code一一对应。
	 * 4.开发者只能解密本公众号的加密code，否则报错。
	 * @param accessToken accessToken
	 * @param codeDecrypt codeDecrypt
	 * @return result
	 */
	public static CodeDecryptResult codeDecrypt(string accessToken, CodeDecrypt codeDecrypt) {
		return codeDecrypt(accessToken, JsonUtil.toJSONString(codeDecrypt));
	}

	/**
	 * Code解码
	 * 1.只能解码本公众号卡券获取的加密code。 
	 * 2.开发者若从url上获取到加密code,请注意先进行urldecode，否则报错。
	 * 3.encrypt_code是卡券的code码经过加密处理得到的加密code码，与code一一对应。
	 * 4.开发者只能解密本公众号的加密code，否则报错。
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static CodeDecryptResult codeDecrypt(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/decrypt")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeDecryptResult));
	}

	/**
	 * 导入code
	 * @param accessToken accessToken
	 * @param codeDeposit codeDeposit
	 * @return result
	 */
	public static CodeDepositResult codeDeposit(string accessToken, CodeDeposit codeDeposit) {
		return codeDeposit(accessToken, JsonUtil.toJSONString(codeDeposit));
	}

	/**
	 * 导入code
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result 
	 */
	public static CodeDepositResult codeDeposit(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/deposit")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeDepositResult));
	}

	/**
	 * 查询Code
	 * @param accessToken accessToken
	 * @param codeGet codeGet
	 * @return result  
	 */
	public static CodeGetResult codeGet(string accessToken, CodeGet codeGet) {
		return codeGet(accessToken, JsonUtil.toJSONString(codeGet));
	}

	/**
	 * 查询Code
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result 
	 */
	public static CodeGetResult codeGet(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeGetResult));
	}

	/**
	 * 查询导入code数目
	 * @param accessToken accessToken
	 * @param codeCount codeCount
	 * @return result  
	 */
	public static CodeGetDepositCountResult codeGetDepositCount(string accessToken, CodeGetDepositCount codeCount) {
		return codeGetDepositCount(accessToken,
				JsonUtil.toJSONString(codeCount));
	}

	/**
	 * 查询导入code数目
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result   
	 */
	public static CodeGetDepositCountResult codeGetDepositCount( string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/getdepositcount")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CodeGetDepositCountResult));
	}

	/**
	 * 设置卡券失效
	 * @param accessToken accessToken
	 * @param codeUnavailable codeUnavailable
	 * @return result   
	 */
	public static BaseResult codeUnavailable(string accessToken, CodeUnavailable codeUnavailable) {
		return codeUnavailable(accessToken,
				JsonUtil.toJSONString(codeUnavailable));
	}

	/**
	 * 设置卡券失效
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result  
	 */
	public static BaseResult codeUnavailable(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/unavailable")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 设置卡券失效
	 * @param accessToken accessToken
	 * @param code code
	 * @return result
	 */
	public static BaseResult codeUnavailableByCode(string accessToken, string code) {
		return codeUnavailable(accessToken, string.format("{\"code\": \"%s\"}", code));
	}

	/**
	 * 更改Code
	 * @param accessToken accessToken
	 * @param codeUpdate codeUpdate
	 * @return result
	 */
	public static BaseResult codeUpdate(string accessToken, CodeUpdate codeUpdate) {
		return codeUpdate(accessToken, JsonUtil.toJSONString(codeUpdate));
	}

	/**
	 * 更改Code
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult codeUpdate(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/code/update")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 创建卡券
	 * @param accessToken accessToken
	 * @param card card
	 * @return result
	 */
	public static CreateResult create(string accessToken, Create!(AbstractCard) card) {
		return create(accessToken, JsonUtil.toJSONString(card));
	}

	/**
	 * 创建代金券
	 * @param accessToken accessToken
	 * @param cashCard cashCard
	 * @return result
	 */
	public static CreateResult create(string accessToken, CashCard cashCard) {
		Create!(CashCard) card = new Create!(CashCard)();
		card.setCard(cashCard);
		return create(accessToken, card);
	}

	/**
	 * 创建折扣券
	 * @param accessToken accessToken
	 * @param discountCard discountCard
	 * @return result
	 */
	public static CreateResult create(string accessToken, DiscountCard discountCard) {
		Create!(DiscountCard) card = new Create!(DiscountCard)();
		card.setCard(discountCard);
		return create(accessToken, card);
	}

	/**
	 * 创建优惠券
	 * @param accessToken accessToken
	 * @param generalCouponCard generalCouponCard
	 * @return result
	 */
	public static CreateResult create(string accessToken, GeneralCouponCard generalCouponCard) {
		Create!(GeneralCouponCard) card = new Create!(GeneralCouponCard)();
		card.setCard(generalCouponCard);
		return create(accessToken, card);
	}

	/**
	 * 创建兑换券
	 * @param accessToken accessToken
	 * @param giftCard giftCard
	 * @return result
	 */
	public static CreateResult create(string accessToken, GiftCard giftCard) {
		Create!(GiftCard) card = new Create!(GiftCard)();
		card.setCard(giftCard);
		return create(accessToken, card);
	}

	/**
	 * 创建团购券
	 * @param accessToken accessToken
	 * @param grouponCard grouponCard
	 * @return result
	 */
	public static CreateResult create(string accessToken, GrouponCard grouponCard) {
		Create!(GrouponCard) card = new Create!(GrouponCard)();
		card.setCard(grouponCard);
		return create(accessToken, card);
	}

	/**
	 * 创建卡券
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static CreateResult create(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/create")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(CreateResult));
	}

	/**
	 * 删除卡券
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult del(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/delete")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 删除卡券
	 * @param accessToken accessToken
	 * @param cardId cardId
	 * @return result
	 */
	public static BaseResult deleteByCardId(string accessToken, string cardId) {
		return del(accessToken, string.format("{\"card_id\": \"%s\"}", cardId));
	}

	/**
	 * 查看卡券详情
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static GetResult get(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/get")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		AbstractResult abs = LocalHttpClient.executeJsonResult(httpUriRequest, typeid(AbstractResult));
		if (!abs.isSuccess()) {
			return abs;
		}

		GetResult result = abs;
		CardType cardType = CardType.valueOf(abs.getCard().getCardType().toUpperCase());
		Class!(GetResult) clazz = null;
		switch (cardType) {
		case CASH:
			clazz = typeid(GetCashResult);
			break;
		case DISCOUNT:
			clazz = typeid(GetDiscountResult);
			break;
		case GENERAL_COUPON:
			clazz = typeid(GetGeneralCouponResult);
			break;
		case GROUPON:
			clazz = typeid(GetGrouponResult);
			break;
		// ...其它卡券类型
		default:
			break;
		}
		if (null != clazz) {
			result = LocalHttpClient.executeJsonResult(httpUriRequest, clazz);
		}
		return result;
	}

	/**
	 * 查看卡券详情
	 * @param accessToken accessToken
	 * @param cardId cardId
	 * @return result
	 */
	public static GetResult getByCardId(string accessToken, string cardId) {
		return get(accessToken, string.format("{\"card_id\": \"%s\"}", cardId));
	}

	/**
	 * 创建货架
	 * @param accessToken accessToken
	 * @param landingPage landingPage
	 * @return result
	 */
	public static LandingPageCreateResult landingPageCreate(string accessToken, LandingPageCreate landingPage) {
		return landingPageCreate(accessToken,
				JsonUtil.toJSONString(landingPage));
	}

	/**
	 * 创建货架
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static LandingPageCreateResult landingPageCreate(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/landingpage/create")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(LandingPageCreateResult));
	}

	/**
	 * 修改库存
	 * @param accessToken accessToken
	 * @param modifystock modifystock
	 * @return result
	 */
	public static BaseResult modifyStock(string accessToken, ModifyStock modifystock) {
		return modifyStock(accessToken, JsonUtil.toJSONString(modifystock));
	}

	/**
	 * 修改库存
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult modifyStock(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/modifystock")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 图文消息群发卡券素材
	 * @param accessToken accessToken
	 * @param mpnews mpnews
	 * @return result
	 */
	public static MpNewsGetHtmlResult mpNewsGetHtml(string accessToken, MpNewsGetHtml mpnews) {
		return mpNewsGetHtml(accessToken, JsonUtil.toJSONString(mpnews));
	}

	/**
	 * 图文消息群发卡券素材
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static MpNewsGetHtmlResult mpNewsGetHtml(string accessToken,
			string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/mpnews/gethtml")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(MpNewsGetHtmlResult));
	}

	/**
	 * 设置买单功能
	 * @param accessToken accessToken
	 * @param cardSet cardSet
	 * @return result
	 */
	public static BaseResult payCellSet(string accessToken, PaySellSet cardSet) {
		return payCellSet(accessToken, JsonUtil.toJSONString(cardSet));
	}

	/**
	 * 设置买单功能
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult payCellSet(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/paycell/set")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 设置扫描二维码领取单张卡券
	 * @param accessToken accessToken
	 * @param action action
	 * @return result
	 */
	public static QrCodeCreateResult qrcodeCreate(string accessToken,
			QrCodeCreate action) {
		return qrcodeCreate(accessToken, JsonUtil.toJSONString(action));
	}

	/**
	 * 设置扫描二维码领取多张卡券
	 * @param accessToken accessToken
	 * @param action action
	 * @return result
	 */
	public static QrCodeCreateResult qrcodeCreate(string accessToken,
			QrCodeCreateMultiple action) {
		return qrcodeCreate(accessToken, JsonUtil.toJSONString(action));
	}

	/**
	 * 创建领取卡券二维码
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static QrCodeCreateResult qrcodeCreate(string accessToken,
			string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/qrcode/create")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(QrCodeCreateResult));
	}

	/**
	 * 设置自助核销功能
	 * @param accessToken accessToken
	 * @param cardSet cardSet
	 * @return result
	 */
	public static BaseResult selfconsumecellSet(string accessToken,
			PaySellSet cardSet) {
		return selfconsumecellSet(accessToken, JsonUtil.toJSONString(cardSet));
	}

	/**
	 * 设置自助核销功能
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult selfconsumecellSet(string accessToken,
			string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/selfconsumecell/set")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 设置测试白名单
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static BaseResult testWhiteListSet(string accessToken,
			string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/testwhitelist/set")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(BaseResult));
	}

	/**
	 * 设置测试白名单
	 * @param accessToken accessToken
	 * @param whiteList whiteList
	 * @return result
	 */
	public static BaseResult testWhiteListSet(string accessToken,
			TestWhiteListSet whiteList) {
		return testWhiteListSet(accessToken, JsonUtil.toJSONString(whiteList));
	}

	/**
	 * 更改卡券信息接口
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static UpdateResult update(string accessToken, string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/update")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(UpdateResult));
	}

	/**
	 * 更改卡券信息接口(代金券)
	 * @param accessToken accessToken
	 * @param updateCash updateCash
	 * @return result
	 */
	public static UpdateResult update(string accessToken, UpdateCash updateCash) {
		return update(accessToken, JsonUtil.toJSONString(updateCash));
	}

	/**
	 * 更改卡券信息接口(折扣券)
	 * @param accessToken accessToken
	 * @param updateDiscount updateDiscount
	 * @return result
	 */
	public static UpdateResult update(string accessToken,
			UpdateDiscount updateDiscount) {
		return update(accessToken, JsonUtil.toJSONString(updateDiscount));
	}

	/**
	 * 更改卡券信息接口(优惠券)
	 * @param accessToken accessToken
	 * @param updateGeneralCoupon updateGeneralCoupon
	 * @return result
	 */
	public static UpdateResult update(string accessToken,
			UpdateGeneralCoupon updateGeneralCoupon) {
		return update(accessToken, JsonUtil.toJSONString(updateGeneralCoupon));
	}

	/**
	 * 更改卡券信息接口(兑换券)
	 * @param accessToken accessToken
	 * @param updateGift updateGift
	 * @return result
	 */
	public static UpdateResult update(string accessToken, UpdateGift updateGift) {
		return update(accessToken, JsonUtil.toJSONString(updateGift));
	}

	/**
	 * 更改卡券信息接口(团购券)
	 * @param accessToken accessToken
	 * @param updateGroupon updateGroupon
	 * @return result
	 */
	public static UpdateResult update(string accessToken,
			UpdateGroupon updateGroupon) {
		return update(accessToken, JsonUtil.toJSONString(updateGroupon));
	}

	/**
	 * 获取用户已领取卡券
	 * @param accessToken accessToken
	 * @param postJson postJson
	 * @return result
	 */
	public static UserGetCardListResult userGetCardList(string accessToken,
			string postJson) {
		HttpUriRequest httpUriRequest = RequestBuilder
				.post()
				.setHeader(jsonHeader)
				.setUri(BASE_URI + "/card/user/getcardlist")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(accessToken))
				.setEntity(new StringEntity(postJson, Charset.forName("utf-8")))
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,
				typeid(UserGetCardListResult));
	}

	/**
	 * 获取用户已领取卡券
	 * @param accessToken accessToken
	 * @param userGetCardList userGetCardList
	 * @return result
	 */
	public static UserGetCardListResult userGetCardList(string accessToken,
			UserGetCardList userGetCardList) {
		return userGetCardList(accessToken,
				JsonUtil.toJSONString(userGetCardList));
	}

}
