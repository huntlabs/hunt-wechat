module hunt.wechat.api.TicketAPI;

//import org.apache.http.client.methods.HttpUriRequest;
//import org.apache.http.client.methods.RequestBuilder;

import hunt.wechat.bean.ticket.Ticket;
import hunt.wechat.client.LocalHttpClient;

/**
 * JSAPI ticket
 * @author LiYi
 *
 */
class TicketAPI : BaseAPI{
	
	/**
	 * 获取 jsapi_ticket
	 * @param access_token access_token
	 * @return ticket
	 */
	public static Ticket ticketGetticket(string access_token){
		return ticketGetticket(access_token,"jsapi");
	}

	/**
	 * 获取 ticket
	 * @param access_token access_token
	 * @param type jsapi or wx_card
	 * @return ticket
	 */
	public static Ticket ticketGetticket(string access_token,string type){
		HttpUriRequest httpUriRequest = RequestBuilder.get()
				.setUri(BASE_URI + "/cgi-bin/ticket/getticket")
				.addParameter(PARAM_ACCESS_TOKEN, API.accessToken(access_token))
				.addParameter("type", type)
				.build();
		return LocalHttpClient.executeJsonResult(httpUriRequest,Ticket.class);
	}
}
