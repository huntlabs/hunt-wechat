module hunt.wechat.util.JsonUtil;

import com.alibaba.fastjson.JSON;

abstract class JsonUtil {

	public static <T> T parseObject(string json,Class!(T) clazz){
		return JSON.parseObject(json, clazz);
	}

	public static string toJSONString(Object object){
		return JSON.toJSONString(object);
	}
}
