package com.projects.EcommerceSpring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.projects")
public class ECommerceSpringApplication {
	public static void main(String[] args) {
		
		SpringApplication.run(ECommerceSpringApplication.class, args);
	}

}