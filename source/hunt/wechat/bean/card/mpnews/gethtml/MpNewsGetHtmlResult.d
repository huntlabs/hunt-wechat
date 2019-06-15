module hunt.wechat.bean.card.mpnews.gethtml.MpNewsGetHtmlResult;

import hunt.wechat.bean.BaseResult;

/**
 * 投放卡券－图文消息群发卡券－响应参数
 * 
 * @author Moyq5
 *
 */
class MpNewsGetHtmlResult : BaseResult {

	/**
	 * 一段html代码，可以直接嵌入到图文消息的正文里。
	 * 即可以把这段代码嵌入到上传图文消息素材接口中的content字段里。
	 */
	private string content;

	/**
	 * 返回一段html代码，可以直接嵌入到图文消息的正文里。
	 * 即可以把这段代码嵌入到上传图文消息素材接口中的content字段里。
	 * @return html代码
	 */
	public string getContent() {
		return content;
	}

	/**
	 * 一段html代码，可以直接嵌入到图文消息的正文里。
	 * 即可以把这段代码嵌入到上传图文消息素材接口中的content字段里。
	 * @param content html代码
	 */
	public void setContent(string content) {
		this.content = content;
	}
}
