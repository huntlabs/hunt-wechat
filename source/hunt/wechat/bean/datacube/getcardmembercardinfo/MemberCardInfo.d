module hunt.wechat.bean.datacube.getcardmembercardinfo.MemberCardInfo;

import hunt.wechat.bean.datacube.getcardbizuininfo.BizuinInfo;

/**
 * 拉取会员卡数据接口－提交对象
 * 
 * 特别注意： 
 * 1. 查询时间区间需<=62天，否则报错；
 * 2. 传入时间格式需严格参照示例填写”2015-06-15”，否则报错;
 * 3. 该接口只能拉取非当天的数据，不能拉取当天的卡券数据，否则报错。
 * 
 * @author Moyq5
 *
 */
class MemberCardInfo : BizuinInfo {

}
