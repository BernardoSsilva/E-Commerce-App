package com.projects.EcommerceSpring.dao;

import com.projects.EcommerceSpring.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

//Marcação para fazer com que não haja o erro quanto a segurança do navegador, faz com que a origem da api seja semelhante a do frontend
@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long> {
}
