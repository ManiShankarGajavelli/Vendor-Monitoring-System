package com.gvc.core.vendormonitoringframework.mail;

import org.apache.camel.CamelContext;
import org.apache.camel.impl.DefaultCamelContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CamelConfig {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(CamelConfig.class);

    @Bean
    public CamelContext getCamelContext(CamelRoutBuilder camelRoutBuilder) {
    	CamelContext ctx = new DefaultCamelContext();
    	try {
			ctx.addRoutes(camelRoutBuilder);
			ctx.start();
		} catch (Exception e) {
			log.error("CamelConfig : getCamelContext : exception : "+e.getMessage());
		}
    	return ctx;
    }

}
