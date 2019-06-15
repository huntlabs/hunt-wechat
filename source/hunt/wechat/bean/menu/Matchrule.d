module hunt.wechat.bean.menu.Matchrule;

class Matchrule {

	private string tag_id;
	
	private Integer group_id;

	private Integer sex;

	private string country;

	private string province;

	private string city;

	private string client_platform_type;	//客户端版本，当前只具体到系统型号：IOS(1), Android(2),Others(3)，不填则不做匹配
	
	private string language;

	public Matchrule() {
	}

	public Matchrule(string tag_id, Integer group_id, Integer sex, string country, string province, string city, string client_platform_type, string language) {
		this.tag_id = tag_id;
		this.group_id = group_id;
		this.sex = sex;
		this.country = country;
		this.province = province;
		this.city = city;
		this.client_platform_type = client_platform_type;
		this.language = language;
	}

	public Integer getGroup_id() {
		return group_id;
	}

	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public string getCountry() {
		return country;
	}

	public void setCountry(string country) {
		this.country = country;
	}

	public string getProvince() {
		return province;
	}

	public void setProvince(string province) {
		this.province = province;
	}

	public string getCity() {
		return city;
	}

	public void setCity(string city) {
		this.city = city;
	}

	public string getClient_platform_type() {
		return client_platform_type;
	}

	public void setClient_platform_type(string client_platform_type) {
		this.client_platform_type = client_platform_type;
	}

	public string getTag_id() {
		return tag_id;
	}

	public void setTag_id(string tag_id) {
		this.tag_id = tag_id;
	}

	public string getLanguage() {
		return language;
	}

	public void setLanguage(string language) {
		this.language = language;
	}

}
