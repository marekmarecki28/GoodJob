package com.javahash.spring.dao;

import com.javahash.spring.model.PasswordResetToken;
import com.javahash.spring.model.User;

public interface PasswordResetTokenDAO {
	
	PasswordResetToken findByToken(String token);
	 
	PasswordResetToken findByUser(User user);

	void saveOrUpdate(PasswordResetToken myToken);

}
