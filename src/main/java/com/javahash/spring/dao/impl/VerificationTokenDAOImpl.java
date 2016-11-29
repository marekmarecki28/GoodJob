package com.javahash.spring.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.VerificationTokenDAO;
import com.javahash.spring.model.User;
import com.javahash.spring.model.VerificationToken;

@Repository
public class VerificationTokenDAOImpl implements VerificationTokenDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public VerificationToken findByToken(String token) {
		// TODO Auto-generated method stub
		return null;
	}

	public VerificationToken findByUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void save(VerificationToken myToken) {
		sessionFactory.getCurrentSession().save(myToken);
	}

}
