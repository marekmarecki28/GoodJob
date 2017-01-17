package com.javahash.spring.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.PasswordResetTokenDAO;
import com.javahash.spring.model.PasswordResetToken;
import com.javahash.spring.model.User;

@Repository
public class PasswordResetTokenDAOImpl implements PasswordResetTokenDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public PasswordResetToken findByToken(String token) {
		List<PasswordResetToken> foundTokensList = new ArrayList<PasswordResetToken>();
		
		foundTokensList = sessionFactory.getCurrentSession()
				.createQuery("from PasswordResetToken where token = ?")
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

	public PasswordResetToken findByUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void saveOrUpdate(PasswordResetToken myToken) {
		sessionFactory.getCurrentSession().saveOrUpdate(myToken);
	}

}
