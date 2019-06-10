module hunt.wechat.api.BaseAPI;

// //import org.apache.http.Header;
// //import org.apache.http.HttpHeaders;
// //import org.apache.http.entity.ContentType;
// //import org.apache.http.message.BasicHeader;
import hunt.http.client;

public abstract class BaseAPI {
	protected static final string BASE_URI = "https://api.weixin.qq.com";
	protected static final string MEDIA_URI = "http://file.api.weixin.qq.com";
	protected static final string MP_URI = "https://mp.weixin.qq.com";
	protected static final string MCH_URI = "https://api.mch.weixin.qq.com";
	protected static final string OPEN_URI = "https://open.weixin.qq.com";
	protected static final string WIFI_URI = "https://wifi.weixin.qq.com";

	protected static Header jsonHeader = new BasicHeader(HttpHeaders.CONTENT_TYPE,ContentType.APPLICATION_JSON.toString());
	protected static Header xmlHeader = new BasicHeader(HttpHeaders.CONTENT_TYPE,ContentType.APPLICATION_XML.toString());
	
	protected static final string PARAM_ACCESS_TOKEN = "access_token";
	
}
