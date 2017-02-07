package com.javahash.spring.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.CustomerDAO;
import com.javahash.spring.dao.VerificationTokenDAO;
import com.javahash.spring.model.Customer;
import com.javahash.spring.model.User;
import com.javahash.spring.model.VerificationToken;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Customer> findCustomersByFirstName(String firstname) {
		List<Customer> customers = new ArrayList<Customer>();
		
		customers = sessionFactory.getCurrentSession()
				.createQuery("from Customer where firstname like ?")
				.setParameter(0, "%" + firstname + "%")
				.list();
		return customers;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Customer> findCustomers(Customer customer, User user) {
		List<Customer> customers = new ArrayList<Customer>();
		
		customers = sessionFactory.getCurrentSession()
				.createQuery("from Customer where userId = ? and firstname like ? and lastname like ? and company like ? and nip like ? and phone like ? and email like ? and address like ?")
				.setParameter(0,  user.getUserId())
				.setParameter(1, "%" + customer.getFirstname() + "%")
				.setParameter(2, "%" + customer.getLastname() + "%")
				.setParameter(3, "%" + customer.getCompany() + "%")
				.setParameter(4, "%" + customer.getNip() + "%")
				.setParameter(5, "%" + customer.getPhone() + "%")
				.setParameter(6, "%" + customer.getEmail() + "%")
				.setParameter(7, "%" + customer.getAddress() + "%")
				.list();
		
		return customers;
	}

	@Transactional
	public List<Customer> getAllCustomers() {
		
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) sessionFactory.getCurrentSession()
				.createCriteria(Customer.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return customers;
	}

	public void saveOrUpdate(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@Transactional
	public boolean createCustomer(Customer customer, User user) {
		customer.setUser(user);
		saveOrUpdate(customer);
		return true;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public Customer getCustomer(long customerId) {
		
		List<Customer> customers = new ArrayList<Customer>();
		
		customers = sessionFactory.getCurrentSession()
				.createQuery("from Customer where customerId = ?")
				.setParameter(0, customerId)
				.list();
		if(customers.size() > 0)
		{
			return customers.get(0);
		}
		else
		{
			return null;
		}
	}

	@Transactional
	public void delete(Customer customer) {
		sessionFactory.getCurrentSession().delete(customer);
		
	}

}
