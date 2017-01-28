package com.javahash.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.javahash.spring.dao.CustomerDAO;
import com.javahash.spring.dao.UserDAO;
import com.javahash.spring.model.Customer;
import com.javahash.spring.model.User;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDAO customerDao;
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping(value = {"/newCustomer"}, method = RequestMethod.GET)
   	public String newUser() {

   		return "newCustomer";

   	}
	
	@RequestMapping(value = { "/newCustomer" }, method = RequestMethod.POST)
    public String saveCustomer(@Valid Customer customer, BindingResult result,
            ModelMap model, WebRequest request) {
 
        if (result.hasErrors()) {
            return "newCustomer";
        }
 
        boolean created = customerDao.createCustomer(customer,getUser());
        
        if(created)
        {
        	model.addAttribute("success", customer.getFirstname() + " , your account has been created successfully<br>"
            		+ "We have sent you the registration link. Please follow instructions from email to activate your account.");
        }
        
        return "newCustomer";
    }
	
	@RequestMapping(value = {"/customers" }, method = RequestMethod.GET)
	public String listCustomers(ModelMap model) {
		List<Customer> customers = customerDao.getAllCustomers();
		model.addAttribute("customers",customers);
		return "customers";

	}
    
    @RequestMapping(value = {"/searchcustomer" }, method = RequestMethod.GET)
	public String searchCustomerGo(ModelMap model) {
    	model.addAttribute("customer",new Customer());
		return "searchcustomer";

	}
    
    @RequestMapping(value = {"/searchcustomer" }, method = RequestMethod.POST)
	public ModelAndView searchCustomer(Customer customer) {
    	List<Customer> customersFound = customerDao.findCustomers(customer,getUser());
    	
    	ModelAndView model = new ModelAndView();
    	model.addObject("customers",customersFound);
    	model.setViewName("searchcustomer");
		return model;

	}
    
    /**
     * This method returns the principal[user-name] of logged-in user.
     */
    private User getUser(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        
        return userDao.findByUserName(userName);

    }

}
