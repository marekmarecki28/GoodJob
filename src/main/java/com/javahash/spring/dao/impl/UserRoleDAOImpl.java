package com.javahash.spring.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.UserRoleDAO;
import com.javahash.spring.model.UserRole;

@Repository
public class UserRoleDAOImpl implements UserRoleDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void createUserRole(UserRole userrole) {
		sessionFactory.getCurrentSession().saveOrUpdate(userrole);
	}

}
