package com.pizza.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.CartItem;
import com.pizza.service.CartItemService;
import com.pizza.service.ProductService;
import com.pizza.service.UserService;

@Controller
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("AddToCart-{productId}")
	public String addToCart(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, Principal p, Model model)
	{	
		String username = p.getName();
		int userId = userService.getUserByName(username).getUserId();
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		String productName = productService.getProductById(productId).getProductName();
		cartItem.setProductName(productName);
		int price = productService.getProductById(productId).getProductPrice();
		cartItem.setProductPrice(price);
		cartItem.setAmount(cartItem.getProductQuantity()*cartItem.getProductPrice());
		Date d = new Date();
		cartItem.setOrderDate(d);
		cartItem.setFlag("N");	
		cartItemService.addToCart(cartItem);
		
		return "redirect:/cartList";
	}	
}
