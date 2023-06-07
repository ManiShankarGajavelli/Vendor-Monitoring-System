package com.gvc.core.vendormonitoringframework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.actuate.health.HealthEndpoint;
import org.springframework.boot.actuate.health.Status;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class MonitorService {

    @Autowired
    private JavaMailSender mailSender;

    @Value("${monitoring.interval}")
    private long monitoringInterval;

    @Scheduled(fixedRateString = "${monitoring.interval}")
    public void checkEndpointStatus() {
        if (!UrlChecker.isUrlUp("")) {
            sendAlertEmail("Down");
        }
    }

    private void sendAlertEmail(String status) {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);
        try {
            helper.setTo("manishanker88@gmail.com");
            helper.setSubject("Endpoint Alert");
            helper.setText("The monitored endpoint is down. Status: " + status);
            mailSender.send(message);
        } catch (MessagingException e) {
            // Handle exception if email sending fails
            e.printStackTrace();
        }
    }
}
