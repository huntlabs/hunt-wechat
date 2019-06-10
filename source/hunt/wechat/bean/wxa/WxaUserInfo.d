module hunt.wechat.bean.wxa.WxaUserInfo;

public class WxaUserInfo {

	private string nickName;

	private string avatarUrl;

	private string gender;

	private string city;

	private string province;

	private string country;

	private string language;

	public string getNickName() {
		return nickName;
	}

	public void setNickName(string nickName) {
		this.nickName = nickName;
	}

	public string getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(string avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public string getGender() {
		return gender;
	}

	public void setGender(string gender) {
		this.gender = gender;
	}

	public string getCity() {
		return city;
	}

	public void setCity(string city) {
		this.city = city;
	}

	public string getProvince() {
		return province;
	}

	public void setProvince(string province) {
		this.province = province;
	}

	public string getCountry() {
		return country;
	}

	public void setCountry(string country) {
		this.country = country;
	}

	public string getLanguage() {
		return language;
	}

	public void setLanguage(string language) {
		this.language = language;
	}

}
