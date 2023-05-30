package com.projects.EcommerceSpring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.projects.EcommerceSpring.entity.ProductCategory;

// A anotação especifica que o endpoint REST para a entidade ProductCategory será acessado através do caminho 
// "/product-category".
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {

}
