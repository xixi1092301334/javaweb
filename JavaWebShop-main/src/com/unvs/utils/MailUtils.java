package com.unvs.utils;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import java.util.Properties;

public class MailUtils {
	public static void sendMail(String email , String subject, String emailMsg) throws AddressException, MessagingException {
		
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "SMTP");
		props.setProperty("mail.host", "smtp.qq.com");
		props.setProperty("mail.smtp.auth", "true");// 指定验证为true

		// 创建验证器
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				//第一个参数：邮箱名   第二个参数：授权码
				return new PasswordAuthentication("864381561@qq.com", "zozwwtebkzxxbfjb");
			}
		};

		// 1.创建一个程序与邮件服务器会话对象 Session
		Session session = Session.getInstance(props, auth);

		// 2.创建一个Message，它相当于是邮件内容
		Message message = new MimeMessage(session);
		
		// 设置发送者
		message.setFrom(new InternetAddress("864381561@qq.com"));

		// 设置发送方式与接收者
		message.setRecipient(RecipientType.TO, new InternetAddress(email)); 

		// 设置邮件主题
		message.setSubject(subject);

		// 设置邮件内容，也可以从外部指定邮件内容传入
		// message.setText("这是一封激活邮件，请<a href='#'>点击</a>");
		message.setContent(emailMsg, "text/html;charset=utf-8");

		// 3.创建 Transport用于将邮件发送
		Transport.send(message);
	}
}