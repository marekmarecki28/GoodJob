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
			String lastname,
			String company,
			String nip,
			String phone,
			String email,
			String address) {
		List<Customer> customers = new ArrayList<Customer>();
		
		customers = sessionFactory.getCurrentSession()
				.createQuery("from Customer where firstname like ? and lastname like ? and company like ? and nip like ? and phone like ? and email like ? and address like ?")
				.setParameter(0, "%" + firstname + "%")
				.setParameter(1, "%" + lastname + "%")
				.setParameter(2, "%" + company + "%")
				.setParameter(3, "%" + nip + "%")
				.setParameter(4, "%" + phone + "%")
				.setParameter(5, "%" + email + "%")
				.setParameter(6, "%" + address + "%")
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
