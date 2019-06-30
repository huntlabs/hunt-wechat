module hunt.wechat.bean.media.MediaType;

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
		return "image";
	}

	string _suffix;
	string _type;
}

public class MediaType
{

	enum TypeItem image = TypeItem("jpg", "image");
	enum TypeItem voice_mp3= TypeItem("mp3", "voice");
	enum TypeItem voice_amr = TypeItem("amr", "voice");
	enum TypeItem video = TypeItem("mp4", "video");
	enum TypeItem thumb = TypeItem("jpg", "thumb");

	public abstract string fileSuffix();

	/**
	 * 上传类型
	 * @return uploadType
	 */
	public abstract string uploadType();

}

