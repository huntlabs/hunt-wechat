module hunt.wechat.bean.message.message.VideoMessage;

/**
 * 视频
 *
 * 
 */
class VideoMessage : Message {

    public VideoMessage() {
    }

    public VideoMessage(string touser, Video video) {
        super(touser, "video");
        this.video = video;
    }

    public Video video;


    public Video getVideo() {
        return video;
    }


    public void setVideo(Video video) {
        this.video = video;
    }


    static class Video {
        private string media_id;
        private string title;
        private string description;
        private string thumb_media_id;

        public Video() {

        }

        public Video(string media_id, string title, string description, string thumb_media_id) {
            super();
            this.media_id = media_id;
            this.thumb_media_id = thumb_media_id;
            this.title = title;
            this.description = description;
        }

        public Video(string media_id, string title, string description) {
            super();
            this.media_id = media_id;
            this.title = title;
            this.description = description;
        }

        public string getMedia_id() {
            return media_id;
        }

        public void setMedia_id(string mediaId) {
            media_id = mediaId;
        }

        public string getThumb_media_id() {
            return thumb_media_id;
        }

        public void setThumb_media_id(string thumb_media_id) {
            this.thumb_media_id = thumb_media_id;
        }

        public string getTitle() {
            return title;
        }

        public void setTitle(string title) {
            this.title = title;
        }

        public string getDescription() {
            return description;
        }

        public void setDescription(string description) {
            this.description = description;
        }

    }

}
