module hunt.wechat.util.StringUtils;

abstract class StringUtils {
	
	public static string arrayToDelimitedString(Object[] arr, string delim) {
		if (arr == null || arr.length == 0) {
			return "";
		}
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < arr.length; i++) {
			if (i > 0) {
				sb.append(delim);
			}
			sb.append(arr[i]);
		}
		return sb.toString();
	}
}
