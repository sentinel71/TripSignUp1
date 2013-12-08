package com.portal.signup.servlets;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Query;

public class SignUpServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final Logger log = Logger.getLogger(SignUpServlet.class.getName());
	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-]+(\\." +
			"[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*" +
			"(\\.[A-Za-z]{2,})$";
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		String emailadd = req.getParameter("email");
		
		//check if email pattern is right
		Pattern pattern = Pattern.compile(EMAIL_PATTERN);
		Matcher matcher = pattern.matcher(emailadd);
		if(!matcher.matches()){
			log.info("Email pattern is incorrect.");
			req.setAttribute("isPatternWrong", true);

			try {
				req.getRequestDispatcher("/signup.jsp").forward(req, resp);
				
			} catch (ServletException e) {
				log.info("Error forwarding to signup page");
				e.printStackTrace();
			}
			return;
		}
		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		log.info( emailadd);
		//		Entity email = new Entity("Email");
		//        email.setProperty("email", emailadd);
		//Entity email = new Entity("Email",emailadd);
		Key emailkey = KeyFactory.createKey("emailDirectory", emailadd);

		Query query = new Query("Email", emailkey);
		List<Entity> emailList = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(5));
		if(!emailList.isEmpty()){
			log.info("Duplicate email");
			req.setAttribute("isDuplicate", true);

			try {
				req.getRequestDispatcher("/signup.jsp").forward(req, resp);
			} catch (ServletException e) {
				log.info("Error forwarding to signup page");
				e.printStackTrace();
			}

		}else{

			Entity email = new Entity("Email",emailkey);
			datastore.put(email);
			//resp.sendRedirect("/pages/signupcomplete.jsp");
			try {
				req.getRequestDispatcher("/pages/signupcomplete.jsp").forward(req, resp);
			} catch (ServletException e) {
				log.info("Error forwarding to signupcomplete page");
				e.printStackTrace();
			}
			
			//Sending email
			Properties props = new Properties();
			//Properties props = System.getProperties();
			//props.put("mail.host", "smtp.google.com");
			//props.put("mail.transport.protocol", "smtp");
	        Session session = Session.getDefaultInstance(props, null);
	        session.setDebug(false);
	        String msgBody = "Thank you for joining Trip-To-Paradise! We'll let you know as soon as we go live.";

	        try {
	            Message msg = new MimeMessage(session);
	            msg.setFrom(new InternetAddress("shaad071@gmail.com", "Trip To Paradise"));
	            //msg.addRecipient(Message.RecipientType.TO, new InternetAddress("shaad071@gmail.com"));
	            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailadd,""));
	            msg.setSubject("Welcome to Trip-To-Paradise");
	            msg.setSentDate(new Date());
	           // msg.setText(msgBody);
	            
	            
	            String htmlBody = "<html><head></head><body>"
	            		+ "<h3>Dear User,</h3>"+"<br> Thank you for joining Trip-To-Paradise! We'll let you know as soon as we go live. <br>"+
	            		 "Trip-to-Paradise Team </body></html>";

	            Multipart mp = new MimeMultipart();
	            MimeBodyPart htmlPart = new MimeBodyPart();
	            htmlPart.setContent(htmlBody, "text/html");
	            mp.addBodyPart(htmlPart);
	            msg.setContent(mp);
	            
	            Transport.send(msg);
	            log.info("Mail successfully sent to "+emailadd);
	        } catch (AddressException e) {
	            log.info(e.getLocalizedMessage());
	        } catch (MessagingException e) {
	        	log.info(e.getLocalizedMessage());
	        }
		}
		
		
	}
}
