module hunt.wechat.bean.wxa.GetQrcodeResult;

import java.awt.image.BufferedImage;

import hunt.wechat.bean.BaseResult;

public class GetQrcodeResult : BaseResult{

	private BufferedImage bufferedImage;

	public BufferedImage getBufferedImage() {
		return bufferedImage;
	}

	public void setBufferedImage(BufferedImage bufferedImage) {
		this.bufferedImage = bufferedImage;
	}
	
}
