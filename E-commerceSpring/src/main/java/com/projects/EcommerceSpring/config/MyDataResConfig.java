package com.projects.EcommerceSpring.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.projects.EcommerceSpring.entity.Product;
import com.projects.EcommerceSpring.entity.ProductCategory;

// esta classe configura os repositorios, limitando-os a apenas leitura, por meio da desabilitação dos metodos Post, Put e Delete

@Configuration
public class MyDataResConfig implements RepositoryRestConfigurer {

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        HttpMethod[] theUnsupportedActions = { HttpMethod.PUT, HttpMethod.POST, HttpMethod.DELETE };
        // desabilitar put, post e delete

        config.getExposureConfiguration()
                .forDomainType(Product.class)
                .withItemExposure((metdata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions))
                .withCollectionExposure((metdata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions));

        config.getExposureConfiguration()
                .forDomainType(ProductCategory.class)
                .withItemExposure((metdata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions))
                .withCollectionExposure((metdata, HttpMethods) -> HttpMethods.disable(theUnsupportedActions));
    }

}
