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
        Vendor vendor1 = new Vendor("Jira", 5, "https://www.atlassian.com/software/jira", true,"2","Bussiness","10","25","fab fa-jira");
        Vendor vendor2 = new Vendor("Zendesk", 10, "https://vendorzendesk.com", true,"3","CS Tech","12","18","fas fa-upload");
        Vendor vendor3 = new Vendor("Jenkins", 15, "https://www.jenkins.io/", true,"6","CS Tech","16","24","fab fa-jenkins");
        Vendor vendor4 = new Vendor("BitBucket", 15, "https://bitbucket.org/product", true,"5","CS Bucket","24","29","fas fa-fill");
        Vendor vendor5 = new Vendor("Medallia", 15, "https://www.medallia.com/", true,"4","CSM Tech","29","34","bx bxl-reddit");
        Vendor vendor6 = new Vendor("Siteminder", 15, "https://www.siteminder.com/", true,"8","SITEMINDER","34","49","fas fa-satellite");
        Vendor vendor7 = new Vendor("Certainly", 15, "https://certainly.io/", true,"12","Casier","29","32","fas fa-university");
        

        vendorRepository.save(vendor1);
        vendorRepository.save(vendor2);
        vendorRepository.save(vendor3);
        vendorRepository.save(vendor4);
        vendorRepository.save(vendor5);
        vendorRepository.save(vendor6);
        vendorRepository.save(vendor7);
    }
}
