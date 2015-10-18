package com.mycompany.tmch.util;
import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Repository;

@Repository
public class SentMail {

	private static final Logger LOG = LoggerFactory.getLogger(SentMail.class);
	private MimeMessageHelper mmh;
	private MimeMessage mimeMessage;
	@Autowired
	private JavaMailSender mailSender;

	public SentMail() {
		// TODO Auto-generated constructor stub
		LOG.debug("Inside SentMail.constructor method :: Init");
		mailSender = new JavaMailSenderImpl();
		this.mimeMessage = this.mailSender.createMimeMessage();
		try {
			this.mmh = new MimeMessageHelper(this.mimeMessage, true, "UTF-8");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.constructor method :: "+e.getMessage());
		}
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void setText(String text) {
		try {
			this.mmh.setText(text, true);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setText method :: " + e.getMessage());
		}
	}

	public void setFrom(String from) {
		try {
			this.mmh.setFrom(from);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setFrom method :: " + e.getMessage());
		}
	}

	public void setTo(String to) {
		try {
			this.mmh.setTo(to);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setTo method :: " + e.getMessage());
		}
	}

	public void setTo(String[] to) {
		try {
			this.mmh.setTo(to);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setTo method :: " + e.getMessage());
		}
	}

	public void setCc(String[] cc) {
		try {
			this.mmh.setCc(cc);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setCc method :: " + e.getMessage());
		}
	}

	public void setCc(String cc) {
		try {
			this.mmh.setCc(cc);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setCc method :: " + e.getMessage());
		}
	}

	public void setBcc(String bcc) {
		try {
			this.mmh.setBcc(bcc);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setBcc method :: " + e.getMessage());
		}
	}

	public void setBcc(String[] bcc) {
		try {
			this.mmh.setBcc(bcc);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setBcc method :: " + e.getMessage());
		}
	}

	public void addAttachment(String attachmentFilename, File file) {
		try {
			this.mmh.addAttachment(attachmentFilename, file);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setBcc method :: " + e.getMessage());
		}
	}

	public void setSubject(String subject) {
		try {
			this.mmh.setSubject(subject);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			LOG.error("Error inside SentMail.setSubject method :: " + e.getMessage());
		}
	}

	public void send() {
		LOG.debug("==============================START SENDMAIL===============================");
		try {

			this.mailSender.send(this.mimeMessage);
			LOG.debug("Inside SentMail.send method :: Mail is sending " + this.mimeMessage.toString());
			LOG.debug("Inside SentMail.send method :: SentDate    :: " + this.mimeMessage.getSentDate());
			LOG.debug("Inside SentMail.send method :: Subject     :: " + this.mimeMessage.getSubject());
			LOG.debug("Inside SentMail.send method :: Description :: " + this.mimeMessage.getDescription());
			LOG.debug("Inside SentMail.send method :: Size        :: " + this.mimeMessage.getSize());
			LOG.debug("Inside SentMail.send method :: ContentType :: " + this.mimeMessage.getContentType());
			//LOG.debug("Inside SentMail.send method :: Session     :: " + this.mimeMessage.getSession());
			LOG.debug("==============================END SENDMAIL===============================");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			LOG.debug("==============================ERROR SENDMAIL===============================");
			LOG.error("Error inside SentMail.send method :: " + e.getMessage(), e);
		}

	}
}
