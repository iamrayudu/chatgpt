package ordo.piece;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import ordo.system.ordopassage;
import xmlink.lib.servlet.OrdoServlet;
import xmlink.lib.servlet.UserContextException;

import com.lowagie.text.DocumentException;
import com.lowagie.text.PageSize;
import com.lowagie.text.html.simpleparser.HTMLWorker;
import com.lowagie.text.pdf.PdfWriter;
import com.renault.MyURLEncoder;




/**
 * The Class Frame_S_LstPie.
 * 
 * @author Mudium Murali Mohan
 * Adding JavaDoc for ACA improvements
 */
public class Frame_S_LstPie extends OrdoServlet {


	/**
	 * Perform task.
	 * 
	 * @param request the request
	 * @param response the response
	 */
public void performTask(HttpServletRequest request, HttpServletResponse response){

		try {
			getSession(request);
		}
		catch(UserContextException e) {
			manageError(request,response,e);
			return;
		}
		System.out.println("before pdf try");
		try {
		    System.out.println("Start of try block");

		    File xmlFile = new File("D:\\Public\\Sathya\\SIGNE_VISU\\inputxml.xml");
		    final File dtdFile = new File("D:\\Public\\Sathya\\SIGNE_VISU\\inputdtd.dtd");
		    File xslFile = new File("D:\\Public\\Sathya\\SIGNE_VISU\\inputXSL.xsl");
		    System.out.println("working 001");

		    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		    factory.setValidating(true);
		    DocumentBuilder builder = factory.newDocumentBuilder();
		    System.out.println("working 002");
		    builder.setEntityResolver(new EntityResolver() {
		        public InputSource resolveEntity(String publicId, String systemId) throws SAXException, IOException {
		            if (systemId.endsWith(".dtd")) {
		                System.out.println("working 003");
		                return new InputSource(new FileReader(dtdFile));
		            } else {
		                System.out.println("working 004");
		                return null;
		            }
		        }
		    });
		    System.out.println("working 005");
		    builder.setErrorHandler(new DefaultHandler());
		    Document document = builder.parse(xmlFile);
		    System.out.println("working 006");

		    //xml to string
		    TransformerFactory tfactory = TransformerFactory.newInstance();
		    StreamSource xslStream = new StreamSource(xslFile);
		    Transformer transformer = tfactory.newTransformer(xslStream);
		    System.out.println("working 007");
		    StringWriter writer = new StringWriter();
		    transformer.transform(new DOMSource(document), new StreamResult(writer));
		    String htmlString = writer.toString();
		    System.out.println("working 008");
			File htmlFile = new File("D:\\Public\\Sathya\\SIGNE_VISU\\intermediate.html");
			try (PrintWriter out = new PrintWriter(htmlFile)) {
			out.println(htmlString);
			}


		    //htmlto pdf
		    // File pdfFile = File.createTempFile("D:\\Public\\Sathya\\SIGNE_VISU\\signe_Visu_sample", ".pdf");

		    String absoluteFilePath = "D:\\Public\\Sathya\\SIGNE_VISU\\signe_Visu_samplefile.pdf";
		    File pdfFile = new File(absoluteFilePath);

		    pdfFile.deleteOnExit();
		    System.out.println("working 009");
		    OutputStream outputStream = new FileOutputStream(pdfFile);
		    com.lowagie.text.Document pdfDocument = new com.lowagie.text.Document(PageSize.A4.rotate(), 50, 50, 50, 50);
		    PdfWriter.getInstance(pdfDocument, outputStream);
		    System.out.println("working 010");
		    pdfDocument.open();
		    HTMLWorker htmlWorker = new HTMLWorker(pdfDocument);
		    htmlWorker.parse(new StringReader(htmlString));
		    pdfDocument.close();
		    System.out.println("working 011");
		} catch (FileNotFoundException e) {
		    System.err.println("File not found: " + e.getMessage());
		} catch (IOException e) {
		    System.err.println("IO error: " + e.getMessage());
		} catch (ParserConfigurationException e) {
		    System.err.println("Error configuring parser: " + e.getMessage());
		} catch (SAXException e) {
		    System.err.println("Error parsing XML: " + e.getMessage());
		} catch (TransformerConfigurationException e) {
		    System.err.println("Error configuring transformer: " + e.getMessage());
		} catch (TransformerException e) {
		    System.err.println("Error transforming XML: " + e.getMessage());
		} catch (DocumentException e) {
		    System.err.println("Error creating PDF document: " + e.getMessage());
		} catch (Exception e) {
		    System.err.println("Unexpected error: " + e.getMessage());
		    e.printStackTrace();
		}

        System.out.println("after pdf try");
    

		String s_servlet= request.getContextPath() + "/servlet/ordo.piece.S_LstPieResult?";

		String s_param = new String("");

		Enumeration parameters_enum = request.getParameterNames();
		while( parameters_enum.hasMoreElements() ){
			String param 		= (String)parameters_enum.nextElement();
			String value 		= request.getParameterValues( param )[0];
			String encod_value 	= MyURLEncoder.encode( value );
			if( ( param.indexOf( "select_" ) < 0 )&&
				( param.indexOf( "radio_"  ) < 0 )
												 ){
				s_param  = s_param + param +"=" + encod_value + "&";
			}
		}
		if ( s_param.endsWith( "&" ) ){
			s_param = s_param.substring( 0 , s_param.length() - 1 );
		}

		String s_URL = s_servlet + s_param;

		ordopassage ServletCall = new ordopassage( s_URL );
		setParameterToRequest(request,"ordopassage", ServletCall);

		//Appel de la page Frame_S_LstPie
		callPage(request,response, PATH_ORDO_HTML + "piece/" + "Frame_S_LstPie.jsp");
	}
}