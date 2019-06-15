module hunt.wechat.bean.message.message.TextMessage;


class TextMessage : Message {

    public TextMessage() {
    }

    public TextMessage(string touser) {
        super(touser, "text");
    }

    public TextMessage(string touser, string content) {
        this(touser);
        this.text = new Text();
        this.text.setContent(content);
    }

    private Text text;

    public Text getText() {
        return text;
    }

    public void setText(Text text) {
        this.text = text;
    }

    static class Text {

        private string content;

        public string getContent() {
            return content;
        }

        public void setContent(string content) {
            this.content = content;
        }
    }
}
