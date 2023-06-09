package com.gvc.core.vendormonitoringframework.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gvc.core.vendormonitoringframework.beans.VendorRequest;
import com.gvc.core.vendormonitoringframework.beans.VendorResponse;
import com.gvc.core.vendormonitoringframework.entities.Vendor;
import com.gvc.core.vendormonitoringframework.repository.VendorRepository;

@Service
public class VendorRegistrationService {

	@Autowired
	private VendorRepository vendorRepository;

	public VendorResponse addVendor(VendorRequest vendor) {
		VendorResponse response = new VendorResponse();
		try {
			Vendor vendorObject = new Vendor();
			vendorObject.setMonitoringInterval(vendor.getMonitoringInterval());
			vendorObject.setName(vendor.getName());;
			vendorObject.setStatus(vendor.isStatus());
			vendorObject.setUrl(vendor.getUrl());
			vendorRepository.save(vendorObject);
			response.setStatus("success");
		} catch (Exception e) {
			response.setStatus("failed");
			response.setErrorMessage(e.toString());
		}

		return response;
	}
}
