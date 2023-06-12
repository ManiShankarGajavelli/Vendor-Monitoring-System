package com.gvc.core.vendormonitoringframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gvc.core.vendormonitoringframework.entities.Ticket;

@Repository
public interface TicketsRepository extends JpaRepository<Ticket, Long> {
	
}
