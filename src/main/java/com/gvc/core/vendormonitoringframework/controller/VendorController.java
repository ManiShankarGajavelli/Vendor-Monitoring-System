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

import lombok.Getter;
import lombok.Setter;

@RestController
@RequestMapping("/api/vendors")
public class VendorController {

	@Autowired@Setter@Getter
	private VendorRepositoryService vendorRepositoryService;
	
    @GetMapping(path = "/list",produces = MediaType.APPLICATION_JSON_VALUE)
    public List<VendorBO> getVendors() {
        return  vendorRepositoryService.findAll();
    }
    
    @GetMapping(path = "/get/{id}",produces = MediaType.APPLICATION_JSON_VALUE)
    public VendorBO getVendor(@PathVariable Long id) {
		return vendorRepositoryService.findById(id);
    }
}
