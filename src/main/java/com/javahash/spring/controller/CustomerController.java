package com.javahash.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javahash.spring.dao.CustomerDAO;
import com.javahash.spring.model.Customer;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDAO customerDao;
	
	@RequestMapping(value = {"/customers" }, method = RequestMethod.GET)
	public String listCustomers(ModelMap model) {
		getUserId();
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
    	List<Customer> customersFound = customerDao.findCustomers(customer);
    	
    	ModelAndView model = new ModelAndView();
    	model.addObject("customers",customersFound);
    	model.setViewName("searchcustomer");
		return model;

	}
    
    /**
     * This method returns the principal[user-name] of logged-in user.
     */
    private String getUserId(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

}
