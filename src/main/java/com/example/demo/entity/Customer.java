package com.example.demo.entity;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "customer")
@Getter
@Setter
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
	private Set<Order> orders = new HashSet<Order>(); 
	
	
	public void addOrder(Order order) {
		if(order != null) {
			if(orders == null) {
				orders = new HashSet<Order>();
			}
			orders.add(order);
			order.setCustomer(this);
		}
	}

}

   
