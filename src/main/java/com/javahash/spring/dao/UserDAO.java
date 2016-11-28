package com.javahash.spring.dao;

import java.util.List;

import com.javahash.spring.model.Book;
import com.javahash.spring.model.User;

public interface UserDAO {
	
	User findByUserName(String username);
	
	List<User> getAllUsers();
	
	public void saveOrUpdate(User user);
	
	public void autologin(String username, String password);
	
	public void createVerificationToken(User user, String token);
	
	public boolean createUserAccount(User user);
}
