module hunt.wechat.bean.card.code.decrypt.CodeDecrypt;

//import com.alibaba.fastjson.annotation.JSONField;

/**
 * 卡券核销－Code解码接口－请求参数
 * 
 * 
 *
 */
class CodeDecrypt {
	
	/**
	 * 经过加密的Code码。
	 * 必填：是
	 */
	@JSONField(name = "encrypt_code")
	private string encryptCode;

	/**
	 * @return 经过加密的Code码
	 */
	public string getEncryptCode() {
		return encryptCode;
	}

	/**
	 * 经过加密的Code码。
	 * 必填：是
	 * @param encryptCode 经过加密的Code码
	 */
	public void setEncryptCode(string encryptCode) {
		this.encryptCode = encryptCode;
	}
	
}
