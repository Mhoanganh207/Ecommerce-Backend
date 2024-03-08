package com.example.demo.controller;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.ProductCategory;
import com.example.demo.repository.ProductCategoryRepository;

import lombok.extern.log4j.Log4j2;

@RestController
@Log4j2
public class CategoryController {
	
	private ProductCategoryRepository productCategoryRepository;

	
	
	
	
	public CategoryController(ProductCategoryRepository productCategoryRepository) {
		super();
		this.productCategoryRepository = productCategoryRepository;
		
	}





	@GetMapping("/api/category")
	public ResponseEntity<List<ProductCategory>> getAllCategory(){
		
		log.info("get category");
		List<ProductCategory> list = productCategoryRepository.findAll();
		return new ResponseEntity<List<ProductCategory>>(list, HttpStatus.OK);
		
	}
	

}
