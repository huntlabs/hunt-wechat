module hunt.wechat.bean.message.message.ImageMessage;

public class ImageMessage : Message {

    public ImageMessage() {
    }

    public ImageMessage(string touser, string mediaId) {
        super(touser, "image");
        this.image = new Image();
        this.image.setMedia_id(mediaId);
    }

    private Image image;

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public static class Image {
        private string media_id;

        public string getMedia_id() {
            return media_id;
        }

        public void setMedia_id(string mediaId) {
            media_id = mediaId;
        }

    }
}
