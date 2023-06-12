package com.gvc.core.vendormonitoringframework.entities;
import javax.persistence.*;

@Entity
public class Vendor {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
	@Override
	public String toString() {
		return "Vendor [id=" + id + ", name=" + name + ", monitoringInterval=" + monitoringInterval + ", url=" + url
				+ ", status=" + status + ", urlLastValidated=" + urlLastValidated + ", category=" + category
				+ ", totalPendingIssue=" + totalPendingIssue + ", totalIssue=" + totalIssue + ", logo=" + logo + "]";
	}
	public Vendor(String name, int monitoringInterval, String url, boolean status) {
		super();
		this.id = id;
		this.name = name;
		this.monitoringInterval = monitoringInterval;
		this.url = url;
		this.status = status;
	}
	
	public Vendor(Long id, String name, int monitoringInterval, String url, boolean status, String urlLastValidated,
			String category, String totalPendingIssue, String totalIssue) {
		super();
		this.id = id;
		this.name = name;
		this.monitoringInterval = monitoringInterval;
		this.url = url;
		this.status = status;
		this.urlLastValidated = urlLastValidated;
		this.category = category;
		this.totalPendingIssue = totalPendingIssue;
		this.totalIssue = totalIssue;
	}
	
	
	public Vendor(String name, int monitoringInterval, String url, boolean status, String urlLastValidated,
			String category, String totalPendingIssue, String totalIssue, String logo) {
		super();
		this.id = id;
		this.name = name;
		this.monitoringInterval = monitoringInterval;
		this.url = url;
		this.status = status;
		this.urlLastValidated = urlLastValidated;
		this.category = category;
		this.totalPendingIssue = totalPendingIssue;
		this.totalIssue = totalIssue;
		this.logo = logo;
	}
	public Vendor() {
		super();
	}
	
    
}
