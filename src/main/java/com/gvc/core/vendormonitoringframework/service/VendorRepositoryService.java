package com.gvc.core.vendormonitoringframework.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gvc.core.vendormonitoringframework.beans.VendorBO;
import com.gvc.core.vendormonitoringframework.entities.Vendor;
import com.gvc.core.vendormonitoringframework.repository.VendorRepository;

@Service
public class VendorRepositoryService {    

    @Autowired
    public VendorRepositoryService(VendorRepository vendorRepository) {
        this.vendorRepository = vendorRepository;
    }
    
    private final VendorRepository vendorRepository;

	public List<VendorBO> findAll() {
		List<Vendor> vendors = vendorRepository.findAll();
		List<VendorBO> bos= new ArrayList<>();
		vendors.forEach(v -> {
			VendorBO bo = new VendorBO();			
			BeanUtils.copyProperties(v, bo);
			bos.add(bo);
		});
		return bos;
	}
	public VendorBO findById(Long id) {
		Vendor vendor = vendorRepository.findById(id).orElse(null);
		if(vendor == null)
			return null;
		VendorBO bo= new VendorBO();
		BeanUtils.copyProperties(vendor, bo);
		return bo;
	}
}
