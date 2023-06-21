package com.projects.EcommerceSpring.dao;

import com.projects.EcommerceSpring.entity.Product;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;

//Marcação para fazer com que não haja o erro quanto a segurança do navegador, faz com que a origem da api seja semelhante a do frontend
@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long> {
    // este metodo esta definido como um metodo de busca que procura pelo id da categoria usando o parametro id
    // 
    Page<Product> findByCategoryId(@Param("id") Long id, Pageable pageable);

}
