package com.gvc.core.vendormonitoringframework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;

@SpringBootApplication
@EnableScheduling
@EnableWebMvc
@OpenAPIDefinition(info = @Info(title = "Vendor Locomotive API", version = "2.0", description = "Vendor Locomotive API Information"))
public class VendorMonitoringFrameworkApplication {

	public static void main(String[] args) {
		SpringApplication.run(VendorMonitoringFrameworkApplication.class, args);
	}

}
