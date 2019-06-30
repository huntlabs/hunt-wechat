module hunt.wechat.util.MapUtil;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import hunt.collection.ArrayList;
import java.util.Arrays;
import hunt.collection.Collections;
import java.util.Comparator;
import hunt.collection.HashMap;
import hunt.collection.LinkedHashMap;
import hunt.collection.List;
import hunt.collection.Map;

import hunt.logger;


abstract class MapUtil {
	

	/**
	 * Map key 排序
	 * @param map map
	 * @return map
	 */
	public static Map!(string,string) order(Map!(string, string) map){
		HashMap!(string, string) tempMap = new LinkedHashMap!(string, string)();
		List!(Map.Entry!(string, string)) infoIds = new ArrayList!(Map.Entry!(string, string))(	map.entrySet());

		Collections.sort(infoIds, new class Comparator!(Map.Entry!(string, string)) {
			public int compare(Map.Entry!(string, string) o1,Map.Entry!(string, string) o2) {
				return (o1.getKey()).toString().compareTo(o2.getKey());
			}
		});

		for (int i = 0; i < infoIds.size(); i++) {
			Map.Entry!(string, string) item = infoIds.get(i);
			tempMap.put(item.getKey(), item.getValue());
		}
		return tempMap;
	}


	/**
	 * 转换对象为map
	 * @param object object
	 * @param ignore ignore
	 * @return map
	 */
	public static Map!(string,string) objectToMap(Object object,string[] ignore...){
		Map!(string,string) tempMap = new LinkedHashMap!(string, string)();
		foreach(Field f ; getAllFields(object.getClass())){
			if(!f.isAccessible()){
				f.setAccessible(true);
			}
			bool ig = false;
			if(ignore!=null&&ignore.length>0){
				foreach(string i ; ignore){
					if(i== f.getName()){
						ig = true;
						break;
					}
				}
			}
			if(ig){
				continue;
			}else{
				Object o = null;
				try {
					o = f.get(object);
				} catch (IllegalArgumentException e) {
					logger.error("", e);
				} catch (IllegalAccessException e) {
					logger.error("", e);
				}
				tempMap.put(f.getName(), o==null?"":o.toString());
			}
		}
		return tempMap;
	}

	/**
	 * url 参数串连
	 * @param map map
	 * @param keyLower keyLower
	 * @param valueUrlencode valueUrlencode
	 * @return string
	 */
	public static string mapJoin(Map!(string, string) map,bool keyLower,bool valueUrlencode){
		StringBuilder stringBuilder = new StringBuilder();
		foreach(string key ; map.keySet()){
			if(map.get(key)!=null&&!""== map.get(key)){
				try {
					string temp = (key.endsWith("_")&&key.length()>1)?key.substring(0,key.length()-1):key;
					stringBuilder.append(keyLower?temp.toLowerCase():temp)
								 .append("=")
								 .append(valueUrlencode?URLEncoder.encode(map.get(key),"utf-8").replace("+", "%20"):map.get(key))
								 .append("&");
				} catch (UnsupportedEncodingException e) {
					logger.error("", e);
				}
			}
		}
		if(stringBuilder.length()>0){
			stringBuilder.deleteCharAt(stringBuilder.length()-1);
		}
		return stringBuilder.toString();
	}

	/**
	 * 获取所有Fields,包含父类field
	 * @param clazz clazz
	 * @return list
	 */
	private static List!(Field) getAllFields(Class clazz){
		if(!clazz== typeid(Object)){
			List!(Field) fields = new ArrayList!(Field)(Arrays.asList(clazz.getDeclaredFields()));
			List!(Field) fields2 = getAllFields(clazz.getSuperclass());
			if(fields2!=null){
				fields.addAll(fields2);
			}
			return fields;
		}else{
			return null;
		}
	}

}
