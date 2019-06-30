module hunt.wechat.util.StreamUtils;

import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import hunt.Exceptions;
import hunt.io.Common;
import java.io.InputStreamReader;
import hunt.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import hunt.text.Charset;


abstract class StreamUtils {
	public enum int BUFFER_SIZE = 4096;

	/**
	 * Copy the contents of the given InputStream into a new byte array.
	 * Leaves the stream open when done.
	 * @param _in the stream to copy from
	 * @return the new byte array that has been copied to
	 * @throws IOException _in case of I/O errors
	 */
	public static byte[] copyToByteArray(InputStream _in){
		ByteArrayOutputStream _out = new ByteArrayOutputStream(BUFFER_SIZE);
		copy(_in, _out);
		return _out.toByteArray();
	}

	/**
	 * Copy the contents of the given InputStream into a string.
	 * Leaves the stream open when done.
	 * @param _in the InputStream to copy from
	 * @param charset charset
	 * @return the string that has been copied to
	 * @throws IOException _in case of I/O errors
	 */
	public static string copyToString(InputStream _in, Charset charset){
		StringBuilder _out = new StringBuilder();
		InputStreamReader reader = new InputStreamReader(_in, charset);
		char[] buffer = new char[BUFFER_SIZE];
		int bytesRead = -1;
		while ((bytesRead = reader.read(buffer)) != -1) {
			_out.append(buffer, 0, bytesRead);
		}
		return _out.toString();
	}

	/**
	 * Copy the contents of the given byte array to the given OutputStream.
	 * Leaves the stream open when done.
	 * @param _in the byte array to copy from
	 * @param _out the OutputStream to copy to
	 * @throws IOException _in case of I/O errors
	 */
	public static void copy(byte[] _in, OutputStream _out){
		_out.write(_in);
	}

	/**
	 * Copy the contents of the given string to the given output OutputStream.
	 * Leaves the stream open when done.
	 * @param _in the string to copy from
	 * @param charset the Charset
	 * @param _out the OutputStream to copy to
	 * @throws IOException _in case of I/O errors
	 */
	public static void copy(string _in, Charset charset, OutputStream _out){
		Writer writer = new OutputStreamWriter(_out, charset);
		writer.write(_in);
		writer.flush();
	}

	/**
	 * Copy the contents of the given InputStream to the given OutputStream.
	 * Leaves both streams open when done.
	 * @param _in the InputStream to copy from
	 * @param _out the OutputStream to copy to
	 * @return the number of bytes copied
	 * @throws IOException _in case of I/O errors
	 */
	public static int copy(InputStream _in, OutputStream _out){
		int byteCount = 0;
		byte[] buffer = new byte[BUFFER_SIZE];
		int bytesRead = -1;
		while ((bytesRead = _in.read(buffer)) != -1) {
			_out.write(buffer, 0, bytesRead);
			byteCount += bytesRead;
		}
		_out.flush();
		return byteCount;
	}

	/**
	 * Returns a variant of the given {@link InputStream} where calling
	 * {@link InputStream#close() close()} has no effect.
	 * @param _in the InputStream to decorate
	 * @return a version of the InputStream that ignores calls to close
	 */
	public static InputStream nonClosing(InputStream _in) {
		return new NonClosingInputStream(_in);
	}

	/**
	 * Returns a variant of the given {@link OutputStream} where calling
	 * {@link OutputStream#close() close()} has no effect.
	 * @param _out the OutputStream to decorate
	 * @return a version of the OutputStream that ignores calls to close
	 */
	public static OutputStream nonClosing(OutputStream _out) {
		return new NonClosingOutputStream(_out);
	}


	private static class NonClosingInputStream : FilterInputStream {

		public this(InputStream _in) {
			super(_in);
		}

		override
		public void close(){
		}
	}


	private static class NonClosingOutputStream : FilterOutputStream {

		public this(OutputStream _out) {
			super(_out);
		}

		override
		public void write(byte[] b, int off, int let){
			// It is critical that we override this method for performance
			_out.write(b, off, let);
		}

		override
		public void close(){
		}
	}
}
