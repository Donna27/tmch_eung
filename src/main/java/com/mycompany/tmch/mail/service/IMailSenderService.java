package com.mycompany.tmch.mail.service;

public interface IMailSenderService {
	public void crunchifyReadyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody)throws Exception;
}
