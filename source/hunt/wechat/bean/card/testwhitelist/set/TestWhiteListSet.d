module hunt.wechat.bean.card.testwhitelist.set.TestWhiteListSet;

/**
 * 投放卡券－设置测试白名单－请求参数
 * 
 * @author Moyq5
 *
 */
public class TestWhiteListSet {

	/**
	 * 测试的openid列表
	 */
	private string[] openid;
	
	/**
	 * 测试的微信号列表
	 */
	private string[] username;

	/**
	 * @return 测试的openid列表
	 */
	public string[] getOpenid() {
		return openid;
	}

	/**
	 * 测试的openid列表<br>
	 * 必填：否
	 * @param openid 测试的openid列表
	 */
	public void setOpenid(string[] openid) {
		this.openid = openid;
	}

	/**
	 * @return 测试的微信号列表
	 */
	public string[] getUsername() {
		return username;
	}

	/**
	 * 测试的微信号列表<br>
	 * 必填：否
	 * @param username 测试的微信号列表
	 */
	public void setUsername(string[] username) {
		this.username = username;
	}
}
