package com.javahash.spring.config;  
  
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;  
import org.springframework.context.annotation.ComponentScan;  
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;  
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;  
import org.springframework.web.servlet.view.UrlBasedViewResolver;  

import com.javahash.spring.dao.BookDAO;
import com.javahash.spring.dao.impl.BookDAOImpl;
import com.javahash.spring.model.Book;
import com.javahash.spring.model.User;
import com.javahash.spring.model.UserRole;
  
@Configuration 
@ComponentScan("com.javahash.spring")
@EnableTransactionManagement
@EnableWebMvc
@Import({ SecurityConfig.class })
public class Config extends WebMvcConfigurerAdapter{  
      
    @Bean  
    public UrlBasedViewResolver setupViewResolver() {  
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();  
        resolver.setPrefix("/WEB-INF/views/");  
        resolver.setSuffix(".jsp");  
        resolver.setViewClass(JstlView.class);
        return resolver;  
    }  

    
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
    	SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
    	dataSource.setDriverClass(com.mysql.jdbc.Driver.class);
    	dataSource.setUrl("jdbc:mysql://localhost:3306/goodjob");
    	dataSource.setUsername("root");
    	dataSource.setPassword("1qazxsw2");
    	
    	return dataSource;
    }    
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.scanPackages("com.javahash.spring.model");
    	return sessionBuilder.buildSessionFactory();
    }
    
    @Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
    @Autowired
    @Bean(name = "bookDao")
    public BookDAO getBookDao(SessionFactory sessionFactory) {
    	return new BookDAOImpl(sessionFactory);
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	    registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
    }
    
    @Bean
    public JavaMailSender mailSender() {
        JavaMailSenderImpl sender = new JavaMailSenderImpl();

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.starttls.enable", true);

        sender.setJavaMailProperties(properties);
        sender.setHost("smtp.gmail.com");
        sender.setPort(25);
        sender.setProtocol("smtp");
        sender.setUsername("mailertestowy19@gmail.com");
        sender.setPassword("dupsko123");

        return sender;
    }
  
}  
