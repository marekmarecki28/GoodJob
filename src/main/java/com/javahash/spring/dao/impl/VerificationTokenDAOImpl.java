package com.javahash.spring.dao.impl;

import java.util.ArrayList;
import java.util.List;

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

	@SuppressWarnings("unchecked")
	@Transactional
	public VerificationToken findByToken(String token) {
		List<VerificationToken> foundTokensList = new ArrayList<VerificationToken>();
		
		foundTokensList = sessionFactory.getCurrentSession()
				.createQuery("from VerificationToken where token = ?")
				.setParameter(0, token).list();
		
		if(foundTokensList.size() > 0)
		{
			return foundTokensList.get(0);
		}
		else
		{
			return null;
		}
	}

	public VerificationToken findByUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void saveOrUpdate(VerificationToken myToken) {
		sessionFactory.getCurrentSession().saveOrUpdate(myToken);
	}

}
