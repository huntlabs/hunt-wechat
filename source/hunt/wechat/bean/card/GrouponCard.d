module hunt.wechat.bean.card.GrouponCard;

import hunt.wechat.bean.card.AbstractCard;
import hunt.wechat.bean.card.Groupon;

/**
 * 团购券
 * 
 * @author Moyq5
 *
 */
public class GrouponCard : AbstractCard {

	private Groupon groupon;

	public GrouponCard() {
		super("GROUPON");
	}

	public Groupon getGroupon() {
		return groupon;
	}

	public void setGroupon(Groupon groupon) {
		this.groupon = groupon;
	}

}
