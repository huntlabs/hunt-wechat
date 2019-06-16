module hunt.wechat.bean.card.code.decrypt.CodeDecryptResult;

import hunt.wechat.bean.BaseResult;

/**
 * 卡券核销－Code解码接口－响应参数
 * 
 * 
 *
 */
class CodeDecryptResult : BaseResult {

	/**
	 * 解密后获取的真实Code码
	 */
	private string code;

	/**
	 * @return 解密后获取的真实Code码
	 */
	public string getCode() {
		return code;
	}

	/**
	 * @param code 解密后获取的真实Code码
	 */
	public void setCode(string code) {
		this.code = code;
	}

}
