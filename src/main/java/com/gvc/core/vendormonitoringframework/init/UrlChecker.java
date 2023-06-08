package com.gvc.core.vendormonitoringframework.init;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class UrlChecker {

    public static boolean isUrlUp(String url) {
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Void> response;
        
        try {
            response = restTemplate.getForEntity(url, Void.class);
            return response.getStatusCode() == HttpStatus.OK;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }	
}
