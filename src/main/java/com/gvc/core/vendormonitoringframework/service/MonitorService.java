package com.gvc.core.vendormonitoringframework.service;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.gvc.core.vendormonitoringframework.entities.Vendor;
import com.gvc.core.vendormonitoringframework.init.UrlChecker;
import com.gvc.core.vendormonitoringframework.repository.VendorRepository;

@Service
public class MonitorService {

    @Autowired
    private JavaMailSender mailSender;
    
    @Autowired
    private VendorRepository vendorRepository;

    @Value("${monitoring.interval}")
    private long monitoringInterval;

    @Scheduled(fixedRateString = "${monitoring.interval}")
    public void checkEndpointStatus() {
    	List<Vendor> vendorList = vendorRepository.findAll();
    	for (Vendor vendor : vendorList) {
    		if(vendor!=null && vendor.getUrl()!=null) {
                if (!UrlChecker.isUrlUp(vendor.getUrl())) {
                	if(vendor.isStatus()) {
                		vendor.setStatus(false);
                		vendorRepository.save(vendor);
                	}
                    sendAlertEmail(vendor);
                } else {
                	if(!vendor.isStatus()) {
                		vendor.setStatus(true);
                		vendorRepository.save(vendor);
                	}
                }
    		}
    	}
      System.out.println("vender details"+vendorList);
    
    }

    private void sendAlertEmail(Vendor details) {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);
        try {
            helper.setTo("manishanker88@gmail.com");
            helper.setSubject("Endpoint Alert");
            helper.setText("The monitored endpoint is down. Status: " + details.isStatus());
            System.out.println("details..................."+ details.isStatus());
          //  mailSender.send(message);
        } catch (MessagingException e) {
            // Handle exception if email sending fails
            e.printStackTrace();
        }
    }
}
