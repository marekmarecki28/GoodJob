package com.javahash.spring.dao;

import java.util.List;

import com.javahash.spring.model.Customer;
import com.javahash.spring.model.User;

public interface CustomerDAO {
	
	List<Customer> findCustomersByFirstName(String firstname);
	
	List<Customer> findCustomers(Customer customer, User user);
	
	List<Customer> getAllCustomers();
	
	public void saveOrUpdate(Customer customer);

	boolean createCustomer(Customer customer, User user);

}
