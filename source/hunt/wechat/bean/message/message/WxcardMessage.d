module hunt.wechat.bean.message.message.WxcardMessage;

/**
 * 发送卡券
 *
 * 
 */
class WxcardMessage : Message {

    public WxcardMessage() {
    }

    public WxcardMessage(string touser) {
        super(touser, "wxcard");
    }

    public WxcardMessage(string touser, string card_id) {
        this(touser);
        this.wxcard = new Wxcard();
        this.wxcard.setCard_id(card_id);
    }

    private Wxcard wxcard;

    public Wxcard getWxcard() {
        return wxcard;
    }

    public void setWxcard(Wxcard wxcard) {
        this.wxcard = wxcard;
    }

    static class Wxcard {

        private string card_id;

        public string getCard_id() {
            return card_id;
        }

        public void setCard_id(string card_id) {
            this.card_id = card_id;
        }

    }
}
