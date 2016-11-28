package com.javahash.spring.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.javahash.spring.dao.UserDAO;
import com.javahash.spring.dao.VerificationTokenDAO;
import com.javahash.spring.mail.VerificationToken;
import com.javahash.spring.model.Book;
import com.javahash.spring.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
    private DaoAuthenticationProvider daoAuthenticationProvider;

    @Autowired
    private UserDetailsService userDetailsService;
    
//    @Autowired
//    private VerificationTokenDAO tokenRepository;

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

	@Transactional
	public List<User> getAllUsers() {
		
		@SuppressWarnings("unchecked")
		List<User> users = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return users;
	}
	
	@Transactional
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
	
	public void autologin(String username, String password) {
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());

        daoAuthenticationProvider.authenticate(usernamePasswordAuthenticationToken);

        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
        }
    }
	
	public void createVerificationToken(User user, String token) {
        VerificationToken myToken = new VerificationToken(token, user);
        //tokenRepository.save(myToken);
    }
	
	@Transactional
	public boolean createUserAccount(User user)
	{
		user.setAccountNonExpired(true);
        user.setAccountNonLocked(true);
        user.setCredentialsNonExpired(true);
        user.setEnabled(true);
        String rawPassword = user.getPassword();
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        user.setPassword(passwordEncoder.encode(rawPassword));
        this.saveOrUpdate(user);
        return true;
	}

}
