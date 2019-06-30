module hunt.wechat.bean.shakearound.material.add.MediaType;

struct TypeItem
{
    this(string suffix, string type)
    {
        _suffix = suffix;
        _type = type;
    }

    public string fileSuffix()
    {
        return "jpg";
    }

    public string uploadType()
    {
        return "icon";
    }

    string _suffix;
    string _type;
}

public class MediaType
{
    /**
     * 摇一摇页面展示的icon图
     */
     enum TypeItem icon = TypeItem("jpg","icon");
    /**
     * 申请开通摇一摇周边功能时需上传的资质文件
     */
     enum TypeItem license = TypeItem("jpg","license");

    public abstract string fileSuffix();

    public abstract string uploadType();
}
