module hunt.wechat.bean.bizwifi.qrcode;

import hunt.wechat.bean.bizwifi.base.ShopInfo.QrcodeGet;

/**
 * @ProjectName weixin-popular
 * @Author: zeroJun
 * @Date: 2018/7/24 16:07
 * @Description:
 */
public class QrcodeGet : ShopInfo {
    private Integer img_id;

    public Integer getImg_id() {
        return img_id;
    }

    public void setImg_id(Integer img_id) {
        this.img_id = img_id;
    }
}
