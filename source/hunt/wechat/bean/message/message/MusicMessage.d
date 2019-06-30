module hunt.wechat.bean.message.message.MusicMessage;

class MusicMessage : Message {

    public this() {
    }

    private Music music;


    public this(string touser, Music music) {
        super(touser, "music");
        this.music = music;
    }

    public Music getMusic() {
        return music;
    }

    public void setMusic(Music music) {
        this.music = music;
    }

    static class Music {

        private string title;
        private string description;
        private string musicurl;
        private string hqmusicurl;
        private string thumb_media_id;

        public this(){

        }

        public this(string title, string description, string musicurl,
                     string hqmusicurl, string thumb_media_id) {
            super();
            this.title = title;
            this.description = description;
            this.musicurl = musicurl;
            this.hqmusicurl = hqmusicurl;
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

        public string getMusicurl() {
            return musicurl;
        }

        public void setMusicurl(string musicurl) {
            this.musicurl = musicurl;
        }

        public string getHqmusicurl() {
            return hqmusicurl;
        }

        public void setHqmusicurl(string hqmusicurl) {
            this.hqmusicurl = hqmusicurl;
        }

        public string getThumb_media_id() {
            return thumb_media_id;
        }

        public void setThumb_media_id(string thumbMediaId) {
            thumb_media_id = thumbMediaId;
        }

    }
}
