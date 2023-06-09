package com.gvc.core.vendormonitoringframework.beans;

public class VendorResponse {
	
	private String status;
	
	private String errorMessage;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	@Override
	public String toString() {
		return "VendorResponse [status=" + status + ", errorMessage=" + errorMessage + "]";
	}
	 
}
