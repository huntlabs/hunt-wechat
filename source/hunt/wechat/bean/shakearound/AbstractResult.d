/**
 * 
 */
module hunt.wechat.bean.shakearound.AbstractResult;

import hunt.wechat.bean.BaseResult;

/**
 * 响应结果抽象类
 * @author Moyq5
 * @date 2016年7月31日
 */
class AbstractResult!(T) : BaseResult {

	private T data;

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
}
