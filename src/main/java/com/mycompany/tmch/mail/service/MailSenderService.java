package com.mycompany.tmch.mail.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class MailSenderService implements IMailSenderService{
	@Autowired
	private MailSender crunchifymail; // MailSender interface defines a strategyย
										// for sending simple mails
	@Override
	public void crunchifyReadyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
		try{
		SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
		crunchifyMsg.setFrom(fromAddress);
		crunchifyMsg.setTo(toAddress);
		crunchifyMsg.setSubject(subject);
		crunchifyMsg.setText(msgBody);
		crunchifymail.send(crunchifyMsg);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
