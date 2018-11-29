package com.donghyuks.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.donghyuks.domain.Email;
import com.donghyuks.service.EmailService;

@Component
public class EmailServiceImpl implements EmailService {

	@Autowired
	public JavaMailSender emailSender;
	
	@Value("${smtp.mail.to}")
	private String to;

	@Override
	public void sendSimpleMessage(Email email) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject(email.getSubject());
		message.setText(email.getMailContents());
		emailSender.send(message);

	}
}
