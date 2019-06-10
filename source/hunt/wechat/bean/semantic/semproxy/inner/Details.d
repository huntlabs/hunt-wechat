module hunt.wechat.bean.semantic.semproxy.inner.Details;

/**
 * @program: weixin-popular
 * @description:
 * @author: 01
 * @create: 2018-08-18 13:32
 **/
public class Details {
    private string airline;
    private string hit_str;
    private string answer;
    private ContextInfo context_info;
    private StartLoc start_loc;
    private EndLoc end_loc;
    private StartDate start_date;

    public string getHit_str() {
        return hit_str;
    }

    public void setHit_str(string hit_str) {
        this.hit_str = hit_str;
    }

    public string getAnswer() {
        return answer;
    }

    public void setAnswer(string answer) {
        this.answer = answer;
    }

    public ContextInfo getContext_info() {
        return context_info;
    }

    public void setContext_info(ContextInfo context_info) {
        this.context_info = context_info;
    }

    public StartLoc getStart_loc() {
        return start_loc;
    }

    public void setStart_loc(StartLoc start_loc) {
        this.start_loc = start_loc;
    }

    public EndLoc getEnd_loc() {
        return end_loc;
    }

    public void setEnd_loc(EndLoc end_loc) {
        this.end_loc = end_loc;
    }

    public StartDate getStart_date() {
        return start_date;
    }

    public void setStart_date(StartDate start_date) {
        this.start_date = start_date;
    }

    public string getAirline() {
        return airline;
    }

    public void setAirline(string airline) {
        this.airline = airline;
    }
}
