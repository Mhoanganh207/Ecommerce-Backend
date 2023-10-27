package com.example.demo.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.Purchase;
import com.example.demo.dto.PurchaseResponse;
import com.example.demo.service.CheckoutService;

import lombok.extern.log4j.Log4j2;

@CrossOrigin("http://localhost:4200")
@RestController
@Log4j2
public class CheckoutController {
	
	
	private CheckoutService checkoutService;

	public CheckoutController(CheckoutService checkoutService) {
		super();
		this.checkoutService = checkoutService;
	}
	
	
	@PostMapping("/purchase")
	public PurchaseResponse placeholder(@RequestBody Purchase purchase) {
		
		PurchaseResponse purchaseResponse = this.checkoutService.placeholder(purchase);
		
		
		log.info("new purchase excute",purchase);
		
		
		return purchaseResponse;
	}

}
