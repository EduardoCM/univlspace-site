package space.univl.mail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import space.univl.util.Constants;

public class EmailService {
	
	private static final String SERVLET = "http://0832-177-241-178-240.ngrok.io/UNIVL/activar";
	
	public void sendMail(String nombreCompleto, String email) {
		
		String from = "ecm3198@gmail.com";
		
		final String username = "ecm3198@gmail.com";
		final String password = Constants.PASSWORD_GMAIL;
		
		String host = "smtp.gmail.com";
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		
		/*
		 * Login a nuestra cuenta
		 */
		
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		
		
		Message message = new MimeMessage(session);
		
		try {
			message.setFrom(new InternetAddress(from));
			
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email) );
			
			message.setSubject("Activacion de tu cuenta");
			
			message.setContent("Bienvenido " + nombreCompleto +  " a tu plataforma digital, para activar tu cuenta da click en el siguiente link " + "<a href=\""+ SERVLET + "?email="+ email+ "\">Activar mi cuenta</a>", "text/html");
			
			Transport.send(message);
			
			System.out.println("Email de confirmacion enviado de forma exitosa " + email);
			
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	


}
