package com.gvc.core.vendormonitoringframework.mail;

import java.util.HashMap;
import java.util.Map;

import org.apache.camel.ConsumerTemplate;
import org.apache.camel.Exchange;
import org.apache.camel.ProducerTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.gvc.core.vendormonitoringframework.entities.Ticket;
import com.gvc.core.vendormonitoringframework.repository.TicketsRepository;

@Service
public class EmailService {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(EmailService.class);
	
	@Autowired
	private ProducerTemplate producerTemplate;
	
	@Autowired
	private ConsumerTemplate consumerTemplate;
	
	@Autowired
	private TicketsRepository ticketsRepository;
	
    @Value("${spring.mail.username}")
    private String from;

    public void sendEmail(String recipient, String subject, String body) {
    	log.info("EmailService : sendEMail : to ::" + recipient + " : started");
    	try {
    		Ticket ticket = new Ticket();
    		ticket.setBody(body);
    		ticket.setSubject(subject);
    		ticket.setRecipient(recipient);
    		Ticket savedTicket = ticketsRepository.save(ticket);
    		
    		
            Map<String, Object> headers = new HashMap<>();
            headers.put("To", recipient);
            headers.put("From", from);
            headers.put("Subject", subject + "( "+savedTicket.getId()+" )");
            producerTemplate.setDefaultEndpointUri("direct:sendEmail");
            producerTemplate.sendBodyAndHeaders(body, headers);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("Exception in EmailService : sendEmail : " 
					+ e.getMessage());
		}

        log.info("EmailService : sendEMail : to ::" + recipient +" : completed" );
    }
    
    
    public void recieveEmail() {
    	Exchange receive = consumerTemplate.receive("seda:sendEmail");
    }


	public ProducerTemplate getProducerTemplate() {
		return producerTemplate;
	}


	public void setProducerTemplate(ProducerTemplate producerTemplate) {
		this.producerTemplate = producerTemplate;
	}


	public ConsumerTemplate getConsumerTemplate() {
		return consumerTemplate;
	}


	public void setConsumerTemplate(ConsumerTemplate consumerTemplate) {
		this.consumerTemplate = consumerTemplate;
	}


	public TicketsRepository getTicketsRepository() {
		return ticketsRepository;
	}


	public void setTicketsRepository(TicketsRepository ticketsRepository) {
		this.ticketsRepository = ticketsRepository;
	}


	public String getFrom() {
		return from;
	}


	public void setFrom(String from) {
		this.from = from;
	}
}