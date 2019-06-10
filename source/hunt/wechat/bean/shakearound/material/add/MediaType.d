module hunt.wechat.bean.shakearound.material.add.MediaType;

public enum MediaType {
    /**
     * 摇一摇页面展示的icon图
     */
    icon {
        override
        public string fileSuffix() {
            return "jpg";
        }

        override
        public string uploadType() {
            return "icon";
        }

    },
    /**
     * 申请开通摇一摇周边功能时需上传的资质文件
     */
    license {
        override
        public string fileSuffix() {
            return "jpg";
        }

        override
        public string uploadType() {
            return "license";
        }
    };

    public abstract string fileSuffix();

    public abstract string uploadType();
}
