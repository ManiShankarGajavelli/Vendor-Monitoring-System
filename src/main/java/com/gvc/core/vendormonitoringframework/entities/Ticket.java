package com.gvc.core.vendormonitoringframework.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ticket implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String subject;

	private String body;

	private Long vendorId;

	private String recipient;
	
    private String priorityOfIssue;

    private String statusOfIssue;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Long getVendorId() {
		return vendorId;
	}

	public void setVendorId(Long vendorId) {
		this.vendorId = vendorId;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getPriorityOfIssue() {
		return priorityOfIssue;
	}

	public void setPriorityOfIssue(String priorityOfIssue) {
		this.priorityOfIssue = priorityOfIssue;
	}

	public String getStatusOfIssue() {
		return statusOfIssue;
	}

	public void setStatusOfIssue(String statusOfIssue) {
		this.statusOfIssue = statusOfIssue;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Ticket [id=").append(id).append(", subject=").append(subject).append(", body=").append(body)
				.append(", vendorId=").append(vendorId).append(", recipient=").append(recipient)
				.append(", priorityOfIssue=").append(priorityOfIssue).append(", statusOfIssue=").append(statusOfIssue)
				.append("]");
		return builder.toString();
	}


}
