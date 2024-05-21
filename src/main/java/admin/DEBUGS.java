package admin;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class DEBUGS {
	
	public static void main(String[] args) {
		
		sendVerificationCode("phamdangdung05062001@gmail.com");
	}
	
public static void sendVerificationCode(String recipientEmail) {
        
		Random coderandom = new Random();
		int verificationCode = coderandom.nextInt(100000, 1000000);
        final String username = "phamdangdung5621@gmail.com"; 
        final String password = "dung11b4"; 

        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
        props.put("mail.smtp.ssl.ciphersuites", "TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA");


        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }); 
        
        
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject("Verification Code");
            message.setText("Your verification code is: " + verificationCode);

            Transport.send(message);

            System.out.println("Email sent successfully.");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
		}

}
