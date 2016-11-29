package com.javahash.spring.dao;

import com.javahash.spring.model.User;
import com.javahash.spring.model.VerificationToken;

public interface VerificationTokenDAO {
	
	VerificationToken findByToken(String token);
	 
    VerificationToken findByUser(User user);

	void save(VerificationToken myToken);

}
