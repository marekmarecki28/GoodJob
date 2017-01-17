package com.javahash.spring.event;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.MessageSource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.javahash.spring.dao.UserDAO;
import com.javahash.spring.model.User;

@Component
public class ForgotPasswordListener implements ApplicationListener<OnForgotPasswordEvent> {
	
	@Autowired
    private UserDAO userDao;
    @Autowired
    private JavaMailSender mailSender;

	public void onApplicationEvent(OnForgotPasswordEvent event) {
		this.sendResetPassword(event);
	}
	
	private void sendResetPassword(OnForgotPasswordEvent event) {
        User user = event.getUser();
        String token = UUID.randomUUID().toString();
        userDao.createPasswordResetToken(user, token);
         
        String recipientAddress = "maro44@o2.pl"; //user.getUsername(); //user.getEmail();
        String subject = "Confirm password reset.";
        String confirmationUrl = event.getAppUrl() + "/newPassword?token=" + token;
        String message = "Proszê potwierdziæ reset has³a. ";
         
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message + " " + confirmationUrl);
        mailSender.send(email);
    }

}
