package com.akounts.akounts.service;

import com.akounts.akounts.model.Customers;
import com.akounts.akounts.repository.CustomersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class CustomersService extends AbstractService<Customers, Long> {

    @Autowired
    private CustomersRepository customersRepository;

    @Override
    protected JpaRepository<Customers, Long> getRepository() {
        return customersRepository;
    }

}
