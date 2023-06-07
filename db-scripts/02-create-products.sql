-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('LIVROS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('FICCAO-100', 'Box - O senhor dos anéis', 'Box com 3 livros da serie "O senhor dos aneis"',
'https://img.assinaja.com/assets/tZ/099/img/424197_520x520.jpg'
,1,40,135.90,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TECNOLOGIA-1000',	'Produtividade no desenvolvimento SpringBoot',	'Aprenda SpringBoot'
'https://s3.amazonaws.com/algaworks-cafe.algaworks.com/wp-content/uploads/2018/08/fn013_ebook_pagina2.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('HISTORIA-1001'	,'Homero - Box com 2 livros'	,'Box com os livros Odisséia e Iliada'
'https://m.media-amazon.com/images/I/51w-S+HjEjS._SX394_BO1,204,203,200_.jpg'
,1,70,35.40,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TECNOLOGIA-1001'	,'Java para leigos'	 ,'informações atualizadas sobre linguagens de programação, o básico da programação orientada a objetos, direcionamentos de como criar aplicativos utilizando o JDK7',
'https://m.media-amazon.com/images/I/51ZAEw1+13L._SY344_BO1,204,203,200_.jpg'
,1,89,75.80,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('INFANTIL-1004', 'Macaco Mal humorado', 'Macaco Mal humorado',
'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTzDYInd1feOO_SUXpWEc1yEDkIHBRDb_8gDnk20FQS93EgqnT-zQfRZ45rbcMO87Itf4ejSe0X-sQn_Fhg7tg1eUDkO2cQBwQLuvdctOjH&usqp=CAE'
,1,120,12.90,1, NOW());
