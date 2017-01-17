package com.javahash.spring.event;

import java.util.Locale;

import org.springframework.context.ApplicationEvent;

import com.javahash.spring.model.User;

public class OnForgotPasswordEvent extends ApplicationEvent {

	private static final long serialVersionUID = 2036800980189349367L;
	private final String appUrl;
    private final Locale locale;
    private final User user;
    
	public OnForgotPasswordEvent(String appUrl, Locale locale, User user) {
		super(user);
		this.appUrl = appUrl;
		this.locale = locale;
		this.user = user;
	}

	public String getAppUrl() {
		return appUrl;
	}

	public Locale getLocale() {
		return locale;
	}

	public User getUser() {
		return user;
	}
	
}
