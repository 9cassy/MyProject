package com.pizza.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.pizza.model.SubCategory;
import com.pizza.model.User;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pizza.model.Product;
import com.pizza.service.SubCategoryService;
import com.pizza.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private ProductService productService;
	
	//For SignUp & Login Modal Form Details
	@ModelAttribute("user")
	public User userMethod()
	{
		return new User();
	}
	
	
	//Display Product Form
	@RequestMapping("productForm")
	public String getProductForm(Model model) 
	{
		model.addAttribute("product", new Product());
		model.addAttribute("subCategory", new SubCategory());
		
		//this is called because we want to select a SUBCATEGORY while creating new product
		model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
		//this is used to get the product list
		model.addAttribute("productList", productService.listProduct());
		
		model.addAttribute("productListJSON", productService.listProductByJSON());
		return "productForm";
	}
	
	
	
	//Button Click Action
	@RequestMapping("addProduct")
	@Transactional
	public String addProduct(@ModelAttribute("product") Product product) 
	{
		
		SubCategory subCategory = subCategoryService.getSubCategoryByName(product.getSubCategory().getSubCategoryName());
		subCategoryService.addSubCategory(subCategory);
		product.setSubCategory(subCategory);
		product.setSubCategoryId(subCategory.getSubCategoryId());
		product.setProductPrice(product.getProductPrice()*product.getProductQuantity());
		
		productService.addProduct(product);
		
		//Multipart File Upload
		String path="/Users/9cassy/Documents/DigiNxt/CassyWorkspace/PizzaVilla/src/main/webapp/Resources/ProductImages/";
		path = path+""+product.getProductId()+".gif";
		System.out.println("Image Path is:"+path);
		try
		{
		File f = new File(path);
		MultipartFile m = product.getProductImage();
		byte[] b = m.getBytes();
		FileOutputStream fos = new FileOutputStream(f);
		BufferedOutputStream bos = new BufferedOutputStream(fos);
		bos.write(b);
		bos.close();
		}
		catch (Exception e) {
			System.out.println("ERROR WHILE IMAGE INPUT");
		}
		//End Multipart File Upload
		
		
		return "redirect:/productForm";
	}

	
	//To View Product
		@RequestMapping("viewProduct-{productId}") //creating URL
		public String viewProduct(@PathVariable("productId") int productId, Model model) //Model is used to take data to front page, @PathVariable has to be told which column it is.
		{
			Product product = productService.getProductById(productId); //Getting the entire row in Array format
			System.out.println("heyheyproductId"+productId);
			System.out.println("heyheyproduct"+product);
			//Convert the Array to String format using Json
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create(); //excludeFieldsWithoutExposeAnnotation() is used to avoid circular reference
			//Save the String in productData
			String productData = gson.toJson(product);
			System.out.println("heyGsonproduct"+product);
			System.out.println("heyGsonproductData"+productData);
			//Give the String to model
			model.addAttribute("productData", productData); // "productData" keyword will be used to call the String in the frontend
			System.out.println("heyModel"+productData);
			return "viewProduct"; //here the values have to be added to the page and then displayed
		}
		
		
}
