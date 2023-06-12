package com.gvc.core.vendormonitoringframework.mail;

import javax.annotation.PostConstruct;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.apache.camel.builder.RouteBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class CamelRoutBuilder extends RouteBuilder {
	@Value("${spring.mail.username}")
	private String username;

	@Value("${spring.mail.password}")
	private String password;

	@Value("${spring.mail.properties.mail.smtp.auth}")
	private boolean auth;

	@Value("${spring.mail.properties.mail.smtp.starttls.enable}")
	private boolean starttls;

	@Value("${spring.mail.host}")
	private String host;

	@Value("${spring.mail.port}")
	private String port;

	private String OUT_URI;
	private String IN_URI;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAuth() {
		return auth;
	}

	public void setAuth(boolean auth) {
		this.auth = auth;
	}

	public boolean isStarttls() {
		return starttls;
	}

	public void setStarttls(boolean starttls) {
		this.starttls = starttls;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getOUT_URI() {
		return OUT_URI;
	}

	public void setOUT_URI(String oUT_URI) {
		OUT_URI = oUT_URI;
	}

	public String getIN_URI() {
		return IN_URI;
	}

	public void setIN_URI(String iN_URI) {
		IN_URI = iN_URI;
	}

	@PostConstruct
	public void constructToString() {
		StringBuilder builder = new StringBuilder();
		builder.append("smtp://").append(host).append(":").append(port).append("?username=").append(username)
				.append("&password=").append(password).append("&mail.smtp.auth=").append(auth)
				.append("&mail.smtp.starttls.enable=").append(starttls).append("&mail.smtp.ssl.enable=false");
		this.OUT_URI = builder.toString();

		StringBuilder in_builder = new StringBuilder();
		in_builder.append("pop3s://pop.gmail.com").append("?username=").append(username).append("&password=")
				.append(password);
		this.IN_URI = in_builder.toString();
	}

	@Override
	public void configure() throws Exception {
		// Route for sending email
		from("direct:sendEmail").to(this.OUT_URI);

		// Route for receiving email
		from(this.IN_URI).process(new Processor() {
			@Override
			public void process(Exchange exchange) throws Exception {
				System.err.println(exchange);
				String subject = exchange.getIn().getHeader("Subject", String.class);
				String body = exchange.getIn().getBody(String.class);
				System.out.println("Received email:");
				System.out.println("Subject: " + subject);
				System.out.println("Body: " + body);
			}
		});
	}
}
