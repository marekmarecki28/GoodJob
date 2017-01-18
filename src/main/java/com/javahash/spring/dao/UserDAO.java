package com.javahash.spring.dao;

import java.util.List;

import com.javahash.spring.model.Book;
import com.javahash.spring.model.PasswordResetToken;
import com.javahash.spring.model.User;
import com.javahash.spring.model.VerificationToken;

public interface UserDAO {
	
	User findByUserName(String username);
	
	List<User> getAllUsers();
	
	public void saveOrUpdate(User user);
	
	public void autologin(String username, String password);
	
	public void createVerificationToken(User user, String token);
	
	public void createPasswordResetToken(User user, String token);
	
	public boolean createUserAccount(User user);

	VerificationToken getVerificationToken(String token);
	
	PasswordResetToken getPasswordResetToken(String token);
	
	public boolean resetUserPassword(User user, String newPassword);

	void saveRegisteredUser(User user);
}
