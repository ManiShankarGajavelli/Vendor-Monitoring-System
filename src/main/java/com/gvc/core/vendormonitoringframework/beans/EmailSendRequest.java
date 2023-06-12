package com.gvc.core.vendormonitoringframework.beans;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties
public class EmailSendRequest {

	@JsonProperty
	private String subject;

	@JsonProperty
	private String recipient;

	@JsonProperty
	private String body;

	@JsonProperty
	private String priority;

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("EmailSendRequest [subject=").append(subject).append(", recipient=").append(recipient)
				.append(", body=").append(body).append(", priority=").append(priority).append("]");
		return builder.toString();
	}

}