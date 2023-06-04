package com.projects.EcommerceSpring.dao;

import com.projects.EcommerceSpring.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

// A anotação especifica que o endpoint REST para a entidade ProductCategory será acessado através do caminho 
// "/product-category".
@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {
}
