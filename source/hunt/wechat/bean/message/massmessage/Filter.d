module hunt.wechat.bean.message.massmessage.Filter;


class Filter {

	private bool is_to_all;

	private string group_id;
	
	private Integer tag_id;

	public this(bool is_to_all, string group_id) {
		super();
		this.is_to_all = is_to_all;
		this.group_id = group_id;
	}
	
	public this(bool is_to_all, Integer tag_id) {
		super();
		this.is_to_all = is_to_all;
		this.tag_id = tag_id;
	}

	public this(string group_id){
		super();
		this.group_id = group_id;
	}

	public bool isIs_to_all() {
		return is_to_all;
	}

	public void setIs_to_all(bool is_to_all) {
		this.is_to_all = is_to_all;
	}

	public string getGroup_id() {
		return group_id;
	}

	public void setGroup_id(string group_id) {
		this.group_id = group_id;
	}

	public Integer getTag_id() {
		return tag_id;
	}

	public void setTag_id(Integer tag_id) {
		this.tag_id = tag_id;
	}

}
