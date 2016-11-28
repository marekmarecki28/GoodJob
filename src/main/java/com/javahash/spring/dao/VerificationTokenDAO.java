package com.javahash.spring.dao;

import com.javahash.spring.mail.VerificationToken;
import com.javahash.spring.model.User;

public interface VerificationTokenDAO {
	
	VerificationToken findByToken(String token);
	 
    VerificationToken findByUser(User user);

}
