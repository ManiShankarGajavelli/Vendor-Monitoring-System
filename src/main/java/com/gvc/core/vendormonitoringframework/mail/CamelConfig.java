package com.gvc.core.vendormonitoringframework.mail;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CamelConfig {
	
	@Value("${spring.mail.username}")
    private String username;

	@Value("${spring.mail.password}")
    private String password;

    @Bean
    public CamelRoutBuilder camelRouteBuilder() {
        return new CamelRoutBuilder(username, password);
    }

}
