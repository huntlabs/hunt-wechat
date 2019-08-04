module hunt.wechat.util.JsonUtil;

// import com.alibaba.fastjson.JSON;
import hunt.util.Serialize;

abstract class JsonUtil {

	public static  T parseObject(T)(string json,Class!(T) clazz){
		return toObject!(T)(json);
	}

	public static string toJSONString(Object object){
		return toJson(object);
	}
}
