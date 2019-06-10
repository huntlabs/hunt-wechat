module hunt.wechat.bean.AdaptorCDATA;

import javax.xml.bind.annotation.adapters.XmlAdapter;

public class AdaptorCDATA : XmlAdapter<string, string> {

    override
    public string marshal(string arg0) throws Exception {
        return "<![CDATA[" + arg0 + "]]>";
    }
  
    override
    public string unmarshal(string arg0) throws Exception {
        return arg0;
    }
}
