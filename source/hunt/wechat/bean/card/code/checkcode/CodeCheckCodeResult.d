module hunt.wechat.bean.card.code.checkcode.CodeCheckCodeResult;

import hunt.wechat.bean.BaseResult;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 投放卡券－核查code接口－响应参数
 * 
 * @author Moyq5
 *
 */
class CodeCheckCodeResult : BaseResult {

	/**
	 * 已经成功存入的code。
	 */
	@JSONField(name = "exist_code")
	private string[] existCode;
	
	/**
	 * 没有存入的code。
	 */
	@JSONField(name = "not_exist_code")
	private string[] notExistCode;

	/**
	 * @return 已经成功存入的code
	 */
	public string[] getExistCode() {
		return existCode;
	}

	/**
	 * @param existCode 已经成功存入的code
	 */
	public void setExistCode(string[] existCode) {
		this.existCode = existCode;
	}

	/**
	 * @return 没有存入的code
	 */
	public string[] getNotExistCode() {
		return notExistCode;
	}

	/**
	 * @param notExistCode 没有存入的code
	 */
	public void setNotExistCode(string[] notExistCode) {
		this.notExistCode = notExistCode;
	}
}
