package com.tuandhpc05076.asmjava4.utils;

import java.io.File;
import java.net.http.HttpRequest;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

public class sendMail {
	public static void sendmail(String to,String subject ,String content, HttpServletRequest request) {
		String username = "hoangtuan97531@gmail.com";
		String password = "sjwomehzrjwnafpd";
		Properties p = new Properties();
		p.setProperty("mail.smtp.starttls.enable", "true");
		p.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", 587);
		Session s = Session.getInstance(p, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		Message msg = new MimeMessage(s);
		try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			MimeBodyPart contenPart = new MimeBodyPart();
			contenPart.setContent(content, "text/html; charset=utf-8");
			msg.setSubject(subject);
			msg.setText(content);

//			File file1 = new File(request.getServletContext().getRealPath("/files"));
//			System.out.println(file1 + "file là");
//			if (!file1.exists())
//				file1.mkdirs();
//			Part photo = request.getPart("file_");
//			File file = new File(file1, photo.getSubmittedFileName());
//			photo.write(file.getAbsolutePath());
//			MimeBodyPart part = new MimeBodyPart();
//			part.setDataHandler(new DataHandler(new FileDataSource(file)));
//			part.setFileName(file.getName());
//			Multipart multipart = new MimeMultipart();
//			multipart.addBodyPart(part);
//			msg.setContent(multipart);

			Transport.send(msg);
			System.out.println("chạy được");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
