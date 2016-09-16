package com.javahash.spring.dao;

import java.util.List;

import com.javahash.spring.model.Book;
import com.javahash.spring.model.User;

public interface UserDAO {
	
	User findByUserName(String username);
	
	List<User> getAllUsers();
	
	public void saveOrUpdate(User user);
}
