package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.example.demo.entity.Country;


@CrossOrigin("http://localhost:4200/")
public interface CountryRepository extends JpaRepository<Country, Integer> {

}
