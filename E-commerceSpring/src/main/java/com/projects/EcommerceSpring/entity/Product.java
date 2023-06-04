package com.projects.EcommerceSpring.entity;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

// gerar getters e setters automaticamente
// indica que é uma tabela de nome produto
// indica ser uma entidade de banco de dados
@Entity
@Table(name="product")
@Data
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
    private BigDecimal unitPrice;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "active")
    private boolean active;

    @Column(name = "units_in_stock")
    private int unitsInStock;

    // anotação que faz o gerenciamento da marca temporal da criação do dado de
    // forma automatica
    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    // anotação que faz o gerenciamento da marca temporal da atualização do dado de
    // forma automatica
    @Column(name = "last_updated")
    @UpdateTimestamp
    private Date lastUpdated;
}
