module hunt.wechat.bean.message.message.VoiceMessage;

/**
 * 语音
 *
 * 
 */
class VoiceMessage : Message {

    public VoiceMessage() {
    }

    public VoiceMessage(string touser, string mediaId) {
        super(touser, "voice");
        this.voice = new Voice();
        this.voice.setMedia_id(mediaId);
    }

    public Voice voice;

    public Voice getVoice() {
        return voice;
    }

    public void setVoice(Voice voice) {
        this.voice = voice;
    }

    static class Voice {
        private string media_id;

        public string getMedia_id() {
            return media_id;
        }

        public void setMedia_id(string mediaId) {
            media_id = mediaId;
        }
    }

}
