package com.gvc.core.vendormonitoringframework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class VendorMonitoringFrameworkApplication {

	public static void main(String[] args) {
		SpringApplication.run(VendorMonitoringFrameworkApplication.class, args);
	}

}
