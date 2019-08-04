module hunt.wechat.util.XMLConverUtil;

import hunt.Exceptions;
import hunt.io.Common;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import hunt.text.Charset;
import hunt.collection.LinkedHashMap;
import hunt.collection.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.xml.XMLConstants;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;

import hunt.logging;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.sun.xml.bind.marshaller.CharacterEscapeHandler;

/**
 * XML 数据接收对象转换工具类
 * 
 * 
 *
 */
abstract class XMLConverUtil {


	private static Map!(Class, JAXBContext) JAXB_CONTEXT_MAP;

	static this(){
		JAXB_CONTEXT_MAP = new ConcurrentHashMap!(Class, JAXBContext)(256);
	}

	/**
	 * XML to Object
	 * 
	 * @param <T>
	 *            T
	 * @param clazz
	 *            clazz
	 * @param xml
	 *            xml
	 * @return T
	 */
	public static  T convertToObject(Class!(T) clazz, string xml) {
		return convertToObject(clazz, new StringReader(xml));
	}

	/**
	 * XML to Object
	 * 
	 * @param <T>
	 *            T
	 * @param clazz
	 *            clazz
	 * @param inputStream
	 *            inputStream
	 * @return T
	 */
	public static T convertToObject(Class!(T) clazz, InputStream inputStream) {
		return convertToObject(clazz, new InputStreamReader(inputStream));
	}

	/**
	 * XML to Object
	 * 
	 * @param <T>
	 *            T
	 * @param clazz
	 *            clazz
	 * @param inputStream
	 *            inputStream
	 * @param charset
	 *            charset
	 * @return T
	 */
	public static  T convertToObject(Class!(T) clazz, InputStream inputStream, Charset charset) {
		return convertToObject(clazz, new InputStreamReader(inputStream, charset));
	}

	/**
	 * XML to Object
	 * 
	 * @param <T>
	 *            T
	 * @param clazz
	 *            clazz
	 * @param reader
	 *            reader
	 * @return T
	 */
	
	public static  T convertToObject(Class!(T) clazz, Reader reader) {
		try {
			/**
			 * XXE 漏洞
			 * https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Prevention_Cheat_Sheet#JAXB_Unmarshaller
			 */
			SAXParserFactory spf = SAXParserFactory.newInstance();
			spf.setFeature("http://xml.org/sax/features/external-general-entities", false);
			spf.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
			spf.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);

			if (!JAXB_CONTEXT_MAP.containsKey(clazz)) {
				JAXB_CONTEXT_MAP.put(clazz, JAXBContext.newInstance(clazz));
			}

			Source xmlSource = new SAXSource(spf.newSAXParser().getXMLReader(), new InputSource(reader));
			Unmarshaller unmarshaller = JAXB_CONTEXT_MAP.get(clazz).createUnmarshaller();
			return cast(T) unmarshaller.unmarshal(xmlSource);
		} catch (Exception e) {
			logger.error("", e);
		}
		return null;
	}

	/**
	 * Object to XML
	 * 
	 * @param object
	 *            object
	 * @return xml
	 */
	public static string convertToXML(Object object) {
		try {
			if (!JAXB_CONTEXT_MAP.containsKey(object.getClass())) {
				JAXB_CONTEXT_MAP.put(object.getClass(), JAXBContext.newInstance(object.getClass()));
			}
			Marshaller marshaller = JAXB_CONTEXT_MAP.get(object.getClass()).createMarshaller();
			marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			// 设置CDATA输出字符
			marshaller.setProperty(typeid(CharacterEscapeHandler).name, new class CharacterEscapeHandler {
				public void escape(char[] ac, int i, int j, bool flag, Writer writer){
					writer.write(ac, i, j);
				}
			});
			StringWriter stringWriter = new StringWriter();
			marshaller.marshal(object, stringWriter);
			return stringWriter.getBuffer().toString();
		} catch (Exception e) {
			logger.error("", e);
		}
		return null;
	}

	/**
	 * 转换简单的xml to map
	 * 
	 * @param xml
	 *            xml
	 * @return map
	 */
	public static Map!(string, string) convertToMap(string xml) {
		Map!(string, string) map = new LinkedHashMap!(string, string)();
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

			/*
			 * 避免 XXE 攻击
			 * 
			 * @since 2.8.21
			 */
			dbf.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
			dbf.setFeature("http://xml.org/sax/features/external-general-entities", false);
			dbf.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
			dbf.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
			dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
			dbf.setXIncludeAware(false);
			dbf.setExpandEntityReferences(false);

			DocumentBuilder db = dbf.newDocumentBuilder();
			StringReader sr = new StringReader(xml);
			InputSource _is = new InputSource(sr);
			Document document = db.parse(_is);

			Element root = document.getDocumentElement();
			if (root != null) {
				NodeList childNodes = root.getChildNodes();
				if (childNodes != null && childNodes.getLength() > 0) {
					for (int i = 0; i < childNodes.getLength(); i++) {
						Node node = childNodes.item(i);
						if (node != null && node.getNodeType() == Node.ELEMENT_NODE) {
							map.put(node.getNodeName(), node.getTextContent());
						}
					}
				}
			}
		} catch (Exception e) {
			logger.error("", e);
		}
		return map;
	}

}
