module hunt.wechat.bean.media.MediaType;

public enum MediaType{
	image {

		override
		public string fileSuffix() {
			return "jpg";
		}

		override
		public string uploadType() {
			return "image";
		}
	},voice_mp3 {

		override
		public string fileSuffix() {
			return "mp3";
		}

		override
		public string uploadType() {
			return "voice";
		}
	},voice_amr {

		override
		public string fileSuffix() {
			return "amr";
		}

		override
		public string uploadType() {
			return "voice";
		}
	},video {
		override
		public string fileSuffix() {
			return "mp4";
		}

		override
		public string uploadType() {
			return "video";
		}
	},thumb {
		override
		public string fileSuffix() {
			return "jpg";
		}

		override
		public string uploadType() {
			return "thumb";
		}
	};

	public abstract string fileSuffix();

	/**
	 * 上传类型
	 * @return uploadType
	 */
	public abstract string uploadType();



}
