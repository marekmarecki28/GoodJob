package com.javahash.spring.dao;

import com.javahash.spring.model.UserAttempts;

public interface UserAttemptsDAO {
	
	void updateFailAttempts(String username);
	void resetFailAttempts(String username);
	UserAttempts getUserAttempts(String username);

}
