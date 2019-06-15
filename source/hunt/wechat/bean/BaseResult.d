module hunt.wechat.bean.BaseResult;


/**
 * 微信请求状态数据
 *
 * @author LiYi
 */
class BaseResult {

  private enum string SUCCESS_CODE = "0";

  private string errcode;
  private string errmsg;

  public BaseResult() {
  }

  public BaseResult(string errcode, string errmsg) {
    this.errcode = errcode;
    this.errmsg = errmsg;
  }

  public string getErrcode() {
    return errcode;
  }

  public void setErrcode(string errcode) {
    this.errcode = errcode;
  }

  public string getErrmsg() {
    return errmsg;
  }

  public void setErrmsg(string errmsg) {
    this.errmsg = errmsg;
  }

  public bool isSuccess() {
    return errcode == null || errcode.isEmpty() || errcode== SUCCESS_CODE;
  }

}
