module hunt.wechat.bean.user.Group;

import hunt.collection.List;

import hunt.wechat.bean.BaseResult;


public class Group : BaseResult{
	
	private GroupData group;
	
	private List<GroupData> groups;
	
	private Integer groupid;
	
	public GroupData getGroup() {
		return group;
	}

	public void setGroup(GroupData group) {
		this.group = group;
	}

	public List<GroupData> getGroups() {
		return groups;
	}

	public void setGroups(List<GroupData> groups) {
		this.groups = groups;
	}

	public Integer getGroupid() {
		return groupid;
	}

	public void setGroupid(Integer groupid) {
		this.groupid = groupid;
	}



	public static class GroupData{
		private string id;
		
		private string name;
		
		private Integer count; 

		public string getId() {
			return id;
		}

		public void setId(string id) {
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
		
		
	}
}
