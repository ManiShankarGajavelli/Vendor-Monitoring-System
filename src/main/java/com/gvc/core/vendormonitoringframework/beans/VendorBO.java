package com.gvc.core.vendormonitoringframework.beans;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class VendorBO {
	
    private Long id;
    private String name;
    private int monitoringInterval;
    private String url;
    private boolean status;

}
