module hunt.wechat.bean.DynamicField;

import hunt.collection.Map;

/**
 * 用于XML 返回不定element
 * 
 * @since 2.8.5
 */
interface DynamicField {

	/**
	 * 生成动态属性
	 * @param dataMap xml 转换后的map数据
	 */
	void buildDynamicField(Map!(string,string) dataMap);
}
