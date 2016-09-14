package com.javahash.spring.dao;

import com.javahash.spring.model.User;

public interface UserDAO {
	
	User findByUserName(String username);
}
