package com.laudry.services.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "services")
public class Service {

    @Id
    @Column(name = "service_id")  
    private Long id;

    @Column(name = "service_name")
    private String name;

    
}

