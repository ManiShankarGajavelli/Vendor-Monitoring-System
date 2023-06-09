package com.gvc.core.vendormonitoringframework.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gvc.core.vendormonitoringframework.beans.VendorRequest;
import com.gvc.core.vendormonitoringframework.beans.VendorResponse;
import com.gvc.core.vendormonitoringframework.service.VendorRegistrationService;

@RestController
@RequestMapping("/vendors")
public class VendorRegistrationController {

	@Autowired
	private VendorRegistrationService vendorRegistrationService;

	@PostMapping(path = "/addVendor", produces = MediaType.APPLICATION_JSON_VALUE)
	public VendorResponse vendorRegister(VendorRequest vendor) {
		VendorResponse response = vendorRegistrationService.addVendor(vendor);
		return response;
	}

}
