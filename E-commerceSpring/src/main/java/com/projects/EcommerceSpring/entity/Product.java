package com.projects.EcommerceSpring.entity;

import java.util.Date;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

// gerar getters e setters automaticamente
@Data
// indica que é uma tabela de nome produto
@Table(name = "product")
// indica ser uma entidade de banco de dados
@Entity
public class Product {

    // configura a variavel id como coluna que tem o valor de identidade gerado e
    // que a coluna se chama id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private ProductCategory category;

    @Column(name = "sku")
    private String sku;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "unit_price")
    private Double unitPrice;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "active")
    private boolean active;

    @Column(name = "units_in_strock")
    private Integer unitsInStock;

    @Column(name = "date_created")
    // anotação que faz o gerenciamento da marca temporal da criação do dado de
    // forma automatica
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_updated")
    // anotação que faz o gerenciamento da marca temporal da atualização do dado de
    // forma automatica
    @UpdateTimestamp
    private Date lastUpdate;

    public Product() {
    }

}
