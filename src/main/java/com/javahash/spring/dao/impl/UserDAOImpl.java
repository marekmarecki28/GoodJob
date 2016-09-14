package com.javahash.spring.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.UserDAO;
import com.javahash.spring.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public User findByUserName(String username) {
		List<User> users = new ArrayList<User>();
		
		users = sessionFactory.getCurrentSession()
				.createQuery("from User where username = ?")
				.setParameter(0, username)
				.list();
		
		if(users.size() > 0)
		{
			return users.get(0);
		}
		else
		{
			return null;
		}
	}

}
