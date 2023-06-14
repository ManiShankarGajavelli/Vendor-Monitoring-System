package com.gvc.core.vendormonitoringframework.beans;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class VendorBO {
	
    private Long id;
    private String name;
    private int monitoringInterval;
    private String url;
    private boolean status;
    private String urlLastValidated;
    private String category;
    private String totalPendingIssue;
    private String totalIssue;
    private String logo;
	@Override
	public String toString() {
		return "VendorBO [id=" + id + ", name=" + name + ", monitoringInterval=" + monitoringInterval + ", url=" + url
				+ ", status=" + status + ", urlLastValidated=" + urlLastValidated + ", category=" + category
				+ ", totalPendingIssue=" + totalPendingIssue + ", totalIssue=" + totalIssue + ", logo=" + logo + "]";
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
	public String getUrlLastValidated() {
		return urlLastValidated;
	}
	public void setUrlLastValidated(String urlLastValidated) {
		this.urlLastValidated = urlLastValidated;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTotalPendingIssue() {
		return totalPendingIssue;
	}
	public void setTotalPendingIssue(String totalPendingIssue) {
		this.totalPendingIssue = totalPendingIssue;
	}
	public String getTotalIssue() {
		return totalIssue;
	}
	public void setTotalIssue(String totalIssue) {
		this.totalIssue = totalIssue;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
}
