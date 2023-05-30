package com.projects.EcommerceSpring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.projects.EcommerceSpring.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
