package com.gvc.core.vendormonitoringframework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gvc.core.vendormonitoringframework.beans.EmailSendRequest;
import com.gvc.core.vendormonitoringframework.mail.EmailService;

@RequestMapping("/tickets")
@RestController
public class TicketController {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(TicketController.class);
	
	@Autowired
	EmailService emailService;

	public EmailService getEmailService() {
		return emailService;
	}

	public void setEmailService(EmailService emailService) {
		this.emailService = emailService;
	}
	
	
	@PostMapping(path = "/create",consumes = MediaType.APPLICATION_JSON_VALUE)
	public String sendEmail(@RequestBody EmailSendRequest email) {
		log.info("TicketController :: sendEmail :: started");
		try {
			emailService.sendEmail(email.getRecipient(), email.getSubject(), email.getBody());
		} catch (Exception e) {
			log.error("Exception in TicketController : sendEmail : " 
					+ e.getMessage());
		}
		log.info("TicketController :: sendEmail :: completed");
		return " success";
	}
}
