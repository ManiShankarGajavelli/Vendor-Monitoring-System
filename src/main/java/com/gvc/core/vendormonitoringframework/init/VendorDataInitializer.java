package com.gvc.core.vendormonitoringframework.init;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.gvc.core.vendormonitoringframework.entities.Vendor;
import com.gvc.core.vendormonitoringframework.repository.VendorRepository;

@Component
public class VendorDataInitializer implements CommandLineRunner {
    private final VendorRepository vendorRepository;

    @Autowired
    public VendorDataInitializer(VendorRepository vendorRepository) {
        this.vendorRepository = vendorRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        // Add vendor details here
        Vendor vendor1 = new Vendor("Vendor 1", 5, "https://vendor1.com", true);
        Vendor vendor2 = new Vendor("Vendor 2", 10, "https://vendor2.com", true);
        Vendor vendor3 = new Vendor("Vendor 3", 15, "https://vendor3.com", true);

        vendorRepository.save(vendor1);
        vendorRepository.save(vendor2);
        vendorRepository.save(vendor3);
    }
}
