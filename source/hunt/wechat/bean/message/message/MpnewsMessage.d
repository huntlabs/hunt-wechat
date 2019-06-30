module hunt.wechat.bean.message.message.MpnewsMessage;

/**
 * 
 * 发送图文消息（点击跳转到图文消息页面）
 * 
 * @since 2.8.26
 * 
 */
class MpnewsMessage : Message {

	public this() {
    }

    public this(string toUser, string mediaId) {
        super(toUser, "mpnews");
        this.mpnews = new Mpnews();
        this.mpnews.setMedia_id(mediaId);
    }

    private Mpnews mpnews;

    public Mpnews getMpnews() {
        return mpnews;
    }

    public void setMpnews(Mpnews mpnews) {
        this.mpnews = mpnews;
    }

    static class Mpnews {
        private string media_id;

        public string getMedia_id() {
            return media_id;
        }

        public void setMedia_id(string mediaId) {
            media_id = mediaId;
        }
    }
}
