package com.gvc.core.vendormonitoringframework.init;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.gvc.core.vendormonitoringframework.controller.TicketController;

@Component
public class UrlChecker {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(UrlChecker.class);

    public static boolean isUrlUp(String url) {
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Void> response;
        
        try {
            response = restTemplate.getForEntity(url, Void.class);
            return response.getStatusCode() == HttpStatus.OK;
        } catch (Exception e) {
        	log.error("Excetion : UrlChecker : isUrlUp : {}",e.getMessage());
            return false;
        }
    }	
}
