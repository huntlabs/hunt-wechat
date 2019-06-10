module hunt.wechat.bean.datacube.article.Articletotal;

import hunt.collection.List;

public class Articletotal {

	private string ref_date;

	private string msgid;

	private string title;

	private List<Details> details;

	public string getRef_date() {
		return ref_date;
	}

	public void setRef_date(string ref_date) {
		this.ref_date = ref_date;
	}

	public string getMsgid() {
		return msgid;
	}

	public void setMsgid(string msgid) {
		this.msgid = msgid;
	}

	public string getTitle() {
		return title;
	}

	public void setTitle(string title) {
		this.title = title;
	}

	public List<Details> getDetails() {
		return details;
	}

	public void setDetails(List<Details> details) {
		this.details = details;
	}

}
