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
	public List<Customer> findCustomers(
			String firstname,
			String lastname) {
		List<Customer> customers = new ArrayList<Customer>();
		
		customers = sessionFactory.getCurrentSession()
				.createQuery("from Customer where firstname like ?")
				.setParameter(0, "%" + firstname + "%")
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

}
