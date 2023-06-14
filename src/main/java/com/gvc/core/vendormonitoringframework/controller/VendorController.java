package com.gvc.core.vendormonitoringframework.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gvc.core.vendormonitoringframework.beans.VendorBO;
import com.gvc.core.vendormonitoringframework.service.VendorRepositoryService;

@RestController
@RequestMapping("/api/vendors")
public class VendorController {

	@Autowired
	private VendorRepositoryService vendorRepositoryService;
	
    public VendorRepositoryService getVendorRepositoryService() {
		return vendorRepositoryService;
	}

	public void setVendorRepositoryService(VendorRepositoryService vendorRepositoryService) {
		this.vendorRepositoryService = vendorRepositoryService;
	}

	@GetMapping(path = "/list",produces = MediaType.APPLICATION_JSON_VALUE)
    public List<VendorBO> getVendors() {
    	System.out.println(vendorRepositoryService.findAll());
        return  vendorRepositoryService.findAll();
    }
    
    @GetMapping(path = "/get/{id}",produces = MediaType.APPLICATION_JSON_VALUE)
    public VendorBO getVendor(@PathVariable Long id) {
		return vendorRepositoryService.findById(id);
    }
}
