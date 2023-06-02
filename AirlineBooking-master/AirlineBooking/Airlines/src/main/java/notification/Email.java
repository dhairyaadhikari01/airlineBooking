package notification;

import java.io.File;
import java.util.*;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;



public class Email {
	  public static MimeMessage mimeMessage;
		public static void main( String[] args )
	    { 
//	        System.out.println( "Preparing to send message");
//	        String message ="You have successfully booked the flight";
//	        String subject ="codeArea : confirmation";
//	        String to= "dhairya.adhikari1@gmail.com";
//	        String from="dhairyaadhikari94@gmail.com";
//	        
//	      sendEmail(message,subject,to,from);
//	        sendAttach(message,subject,to,from);
	    }
		//This is responsible to send the message with attachment
	    public static void sendAttach(String message, String subject, String to, String from) {
	    	//variable to gmail host
	    			String host="smtp.gmail.com";
	    			
	    			
	    			//get the system properties
	    			Properties properties = System.getProperties();
	    			System.out.println(properties);
	    			
	    			//setting important info to properties object
	    			
	    			//host set
	    			properties.put("mail.smtp.host", host);
	    			properties.put("mail.smtp.port", "465");
	    			properties.put("mail.smtp.ssl.enable", "true");
	    			properties.put("mail.smtp.auth", "true");

	    			//step 1: to get the session object
	    			Session session=Session.getInstance(properties, new Authenticator() {
	    			@Override
	    			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
	    				return new javax.mail.PasswordAuthentication("adhairya931@gmail.com", "naruto@123");
	    			}
	    			
	    			});
	    			session.setDebug(true);
	    			//Step 2: compose the message[text,multi media]
	    			MimeMessage m= new MimeMessage(session);
	    			
	    			//from email id
	    			try {
	    				m.setFrom(from);
	    				
	    				//adding recipient to message
	    				m.addRecipient(Message.RecipientType.TO, new  InternetAddress(to));
	    				
	    				//adding subject to message
	    				m.setSubject(subject);
	    				
	    				//attachment..
	    				//file path
	    				String path ="C:\\Users\\91701\\Desktop\\Dhairya Adhikari.docx.pdf";
	    				
	    				MimeMultipart mimeMultipart = new MimeMultipart();
	    				//file
	    				//text
	    				
	    				MimeBodyPart textMime =new MimeBodyPart();
	    				
	    				MimeBodyPart fileMime =new MimeBodyPart();
	    				
	    				
	    				try {
	    				textMime.setText(message);
	    				
	    				File file = new File(path);
	    				fileMime.attachFile(file);
	    				
	    				mimeMultipart.addBodyPart(textMime);

	    				mimeMultipart.addBodyPart(fileMime);
	    				
							
						} catch (Exception e) {
							
							e.printStackTrace();
						}    				
	    				m.setContent(mimeMultipart);
	    				
	    				//send
	    				//step3: send the message using transport class
	    				Transport.send(m);
	    				System.out.println("sent successfully...............");
	    				
	    			} catch (MessagingException e) {
	    				// TODO Auto-generated catch block
	    				e.printStackTrace();
	    			}
	    		
	    			
	    		}
		
		//this is responsible to send email...
		public static void sendEmail(String message, String subject, String to, String from) {
			//variable to gmail host
			String host="smtp.gmail.com";
			
			
			//get the system properties
			Properties properties = System.getProperties();
			System.out.println(properties);
			
			//setting important info to properties object
			
			//host set
			properties.put("mail.smtp.host", host);
			properties.put("mail.smtp.port", "465");
			properties.put("mail.smtp.ssl.enable", "true");
			properties.put("mail.smtp.auth", "true");

			//step 1: to get the session object
			Session session=Session.getInstance(properties, new Authenticator() {
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication("adhairya931@gmail.com", "naruto@123");
			}
			
			});
			session.setDebug(true);
			//Step 2: compose the message[text,multi media]
			MimeMessage m= new MimeMessage(session);
			
			//from email id
			try {
				m.setFrom(from);
				
				//adding recipient to message
				m.addRecipient(Message.RecipientType.TO, new  InternetAddress(to));
				
				//adding subject to message
				m.setSubject(subject);
				
				//adding text to message
				m.setText(message);
				
				//send
				//step3: send the message using transport class
				Transport.send(m);
				System.out.println("sent successfully...............");
				
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
		}
	}
