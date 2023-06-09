package com.gvc.core.vendormonitoringframework.beans;

public class VendorRequest {

	 	private String name;
	    private int monitoringInterval;
	    private String url;
	    private boolean status;
	    
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
		@Override
		public String toString() {
			return "VenderDetails [name=" + name + ", monitoringInterval=" + monitoringInterval + ", url=" + url
					+ ", status=" + status + "]";
		}
	    
}
