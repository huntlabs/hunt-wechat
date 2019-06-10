module hunt.wechat.bean.user.Tag;

public class Tag {

	private Integer id;
	
	private string name;
	
	private Integer count;

	public Tag() {
	}

	public Tag(Integer id, string name, Integer count) {
		this.id = id;
		this.name = name;
		this.count = count;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public string getName() {
		return name;
	}

	public void setName(string name) {
		this.name = name;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public static Tag newTag(Integer id,string name,Integer count){
		return new Tag(id,name,count);
	}
}
