package com.gvc.core.vendormonitoringframework.beans;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@JsonIgnoreProperties(ignoreUnknown = true)
public class VendorBO {
	
    private Long id;
    private String name;
    private int monitoringInterval;
    private String url;
    private boolean status;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VendorBO [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", monitoringInterval=");
		builder.append(monitoringInterval);
		builder.append(", url=");
		builder.append(url);
		builder.append(", status=");
		builder.append(status);
		builder.append("]");
		return builder.toString();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMonitoringInterval() {
		return monitoringInterval;
	}
	public void setMonitoringInterval(int monitoringInterval) {
		this.monitoringInterval = monitoringInterval;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
    
    

}
