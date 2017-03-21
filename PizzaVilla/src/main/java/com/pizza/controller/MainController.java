package com.pizza.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pizza.model.User;
import com.pizza.service.UserService;

@Controller
public class MainController 
{
	@Autowired
	UserService userService;
	
//----------------------------------------------------------------------------------
	//To Display index page
	@RequestMapping("/") //creating URL
	public String getHome(Model model)
	{
		return "index";
	}
	
	//For SignUp & Login Modal Form Details
	@ModelAttribute("user")
	public User userMethod()
	{
		return new User();
	}
//----------------------------------------------------------------------------------
	
	//SignUp Button Click Action to add a new user
		@RequestMapping("addUser") //creating URL
		public String addUser(@ModelAttribute("user") User user) 
		{
			//Now add the new user
			userService.addUser(user);
			return "userPage";
		}
		
		
		//Login
		@RequestMapping("login")
		public String getUserLogin(Model model)
		{
			model.addAttribute("user", new User());
			return "userPage";
		}
		

		//Login Error
		@RequestMapping("errorPage")
		public String getErrorPg(Model model)
		{
			//model.addAttribute("user", new User());
			return "errorPage";
		}
		
		@RequestMapping(value="/perform_logout", method = RequestMethod.GET)
		public String LogoutPage(HttpServletRequest request, HttpServletResponse response, Model model)
		{
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if(auth!=null)
			{
				new SecurityContextLogoutHandler().logout(request,response,auth);
			}
			
			model.addAttribute("user", new User());
			
			return "index";
		}
//----------------------------------------------------------------------------------
	
		//Display PizzaVilla Page
		@RequestMapping("pizzaVilla") //Link
		public String getPizzaVilla(Model model) 
		{
			model.addAttribute("user", new User());
			return "index"; 		  //Page to be returned
		}
		
//----------------------------------------------------------------------------------			
		//Display Home Page
		@RequestMapping("homePage")
		public String getHomePage(Model model) 
		{
			//model.addAttribute("user", new User());
			return "homePage";
		}

//----------------------------------------------------------------------------------			
				//Display Menu Page
				@RequestMapping("menu") //Link
				public String getMenu(Model model) 
				{
					model.addAttribute("user", new User());
					return "menu"; 		  //Page to be returned
				}		

//----------------------------------------------------------------------------------			
				//Display DragAndDrop Page
				@RequestMapping("test") //Link
				public String getTest() 
				{
					return "test"; 		  //Page to be returned
				}
//----------------------------------------------------------------------------------			
							
}
