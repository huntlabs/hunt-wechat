module hunt.wechat.bean.poi.Photo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 门店图片信息
 * 
 * @author Moyq5
 *
 */
class Photo {

	@JSONField(name = "photo_url")
	private string photoUrl;

	public Photo() {
	}

	public Photo(string photoUrl) {
		this.photoUrl = photoUrl;
	}

	public string getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(string photoUrl) {
		this.photoUrl = photoUrl;
	}
}
