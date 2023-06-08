package com.gvc.core.vendormonitoringframework.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gvc.core.vendormonitoringframework.entities.Vendor;

public interface VendorRepository extends JpaRepository<Vendor, Long> {
	
	 public List<Vendor> findAll();
	 public Optional<Vendor> findById(Long id);
}
