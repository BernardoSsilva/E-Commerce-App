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
INSERT INTO product_category(category_name) VALUES ('Livros');
INSERT INTO product_category(category_name) VALUES ('Xicaras');
INSERT INTO product_category(category_name) VALUES ('Eletronicos');


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('FICCAO-100', 'Box - O senhor dos anéis', 'Box com 3 livros da serie "O senhor dos aneis"',
'https://img.assinaja.com/assets/tZ/099/img/424197_520x520.jpg'
,1,40,135.90,1, NOW());


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

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('FICCAO-101', 'STAR WARS: DARK EDITION', 'Em uma galáxia muito, muito distante, os fãs de Star Wars aguardavam por este momento inesquecível. No ano de encerramento da saga mais lendária da história do cinema, a DarkSide® Books apresenta uma nova edição de Star Wars ','https://m.media-amazon.com/images/I/51I+SoMMWZL._SY498_BO1,204,203,200_.jpg', 1, 305, 71.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CIENCIAS-1001', 'Teoria da Relatividade: Sobre a Teoria da Relatividade Especial e Geral', 'Explicar a um leigo os princípios básicos da teoria da relatividade: quem melhor para fazê-lo do que o próprio autor do conceito que revolucionou a física moderna no século XX? ', 'https://m.media-amazon.com/images/I/41lIZkkZkhL._SX297_BO1,204,203,200_.jpg', 1, 100, 16.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('FICCAO-103', 'Grandes Obras de Júlio Verne - Box com 3 Livros', 'Explore o mundo imaginário de Júlio Verne com este box que reúne três de suas obras mais famosas em uma edição especial. O box traz "A Volta ao Mundo em 80 Dias", "Viagem ao Centro da Terra" e "Vinte Mil Léguas Submarinas"', 'https://m.media-amazon.com/images/I/51g5uYEpnEL._SX379_BO1,204,203,200_.jpg', 1, 100, 65.50, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('VIDEOGAME-1001', 'Console PlayStation®5 Edição Digital', '', 'https://m.media-amazon.com/images/I/51aaVzIW6DL._AC_SX466_.jpg', 1, 100, 3958.02, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('POLITICA-1001', 'O Príncipe de Maquiavel: Texto Integral', 'Nesta obra, que é um clássico sobre pensamento político, o grande escritor Maquiavel mostra como funciona a ciência política.', 'https://m.media-amazon.com/images/I/41Mdi-owBRL._SX345_BO1,204,203,200_.jpg', 1, 150, 19.67, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('FICCAO-103', 'Frankenstein', 'O que forma um ser humano? Neste clássico de uma das maiores escritoras da história.', 'https://m.media-amazon.com/images/I/61NdHMd1PYL._SX331_BO1,204,203,200_.jpg', 1, 100, 44.95, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('INFANTIL-1002', 'Minhas 100 primeiras palavras', 'Faça uma divertida viagem pelo mundo encantado das palavras. Treine o seu raciocínio desvendando a charada de cada página. Será um aprendizado com muita diversão!', 'https://m.media-amazon.com/images/I/51AJ0jRs3FL._SX402_BO1,204,203,200_.jpg', 1, 100, 19.99, 1, now());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('INFANTIL-1003', 'Olha Quem Sou! Leão', '• Ilustrações grandes e supercoloridas. • História divertida com texto simples e letra em caixa alta (letra bastão) • Excelente para crianças que estão aprendendo a ler.', 'https://m.media-amazon.com/images/I/518qeDu2ZNL._SY498_BO1,204,203,200_.jpg', 1, 100, 22.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1000', 'Mimo Style Mini Canecas Para Café Com 6 Peças Na Cor Preta', 'As canecas podem ser levadas ao micro-ondas para a preparação de chá ou aquecimento rápido de bebidas;', 'https://m.media-amazon.com/images/I/41eWLGNYcbL._AC_SX522_.jpg', 1, 100, 46.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1001', 'Mimo Style Copo Térmico de Aço Inoxidável Parede Dupla Vermelho 350ml Com Tampa de Polipropileno Livre de BPA', 'Mimo Style Copo Térmico de Aço Inoxidável Parede Dupla Vermelho 350ml Com Tampa de Polipropileno Livre de BPA. Ideal para Manter A Temperaturas de Bebidas Quentes e Geladas, Café, Chá, Suco E Água', 'https://m.media-amazon.com/images/I/41gbWFE9+iL._AC_SX522_.jpg', 1, 100, 43.07, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1002', 'Copo de Vidro Tampa Bambu e Canudo AMO VOCE XICARA', '', 'https://m.media-amazon.com/images/I/51xo7LlecNL._AC_SX522_.jpg', 1, 100, 58.90, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1003', 'Jogo 6 Xícaras Para Café Expresso Coloridas Com Suporte 50ml', '', 'https://m.media-amazon.com/images/I/61OUAg7luYL._AC_SX522_.jpg', 1, 100, 60.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1004', 'Caneca 6 Esmaltado Vermelho 160 ml - Ewel', '', 'https://m.media-amazon.com/images/I/41IASdyAafL._AC_SX522_.jpg', 1, 100, 20.36, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1005', 'Wincy Conjunto de 6 Xícaras de Vidro 90 ml com Pires, VDA09102', '', 'https://m.media-amazon.com/images/I/51LUa6+gaUS._AC_SX522_.jpg', 1, 100, 56.74, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1006', 'CANECA SIGNIFICADO DE MÃE', '', 'https://m.media-amazon.com/images/I/51ke7e8o1NL._AC_SX569_.jpg', 1, 100, 44.09, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1007', 'Caneca 3d Raposa Cerâmica 350 Ml Caneca Raposinha Decorada', '', 'https://m.media-amazon.com/images/I/51iZKT9ZI2L._AC_SX522_.jpg', 1, 100, 48.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1008', 'Caneca Porcelana Por Favor Aguarde Instalando Minha Paciência Meme 300ml', '', 'https://m.media-amazon.com/images/I/411AWaag3+L._AC_SX522_.jpg', 1, 100, 35.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1009', 'Caneca Porcelana Rosto 280 Ml', '', 'https://m.media-amazon.com/images/I/61TvqWgEk8L._AC_SX522_.jpg', 1, 100, 78.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('XICARA-1010', 'Henniu Xícara de café à prova de vazamento térmica isolada para carro caneca de café portátil para viagem aço inoxidável 510 ml', '', 'https://m.media-amazon.com/images/I/519qJ-eSpoL._AC_SX522_.jpg', 1, 100, 81.99, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CELULAR-1000', 'Celular Xiaomi Redmi Note 12 128GB / 6GB RAM/Dual Sim/TelaP e 13MP - Onyx Gray - Preto', '', 'https://m.media-amazon.com/images/I/51fAmmSJcUL._AC_SX679_.jpg', 1, 100, 1700.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CELULAR-1001', 'Smartphone Xiaomi Redmi Note 12 128GB - 4GB Ram - Versao Global (Ice Blue)', '', 'https://m.media-amazon.com/images/I/61wWTSB-YIL.__AC_SX300_SY300_QL70_ML2_.jpg', 1, 100, 1077.00, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('CELULAR-1002', 'Smartphone Motorola Moto G52 128GB 4GB RAM Branco', '', 'https://m.media-amazon.com/images/I/51puORzQrkL._AC_SX569_.jpg', 1, 100, 1098.00, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('NOTEBOOK-1001', 'Apple notebook MacBook Air (de 13 polegadas, Processador M1 da Apple com CPU 8‑core e GPU 7‑core, 8 GB RAM, 256 GB) - Cinza espacial', '', 'https://m.media-amazon.com/images/I/41-RhQeujUL._AC_SX679_.jpg', 1, 100, 7799.00, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('KEYBOARD-1001', 'Magic Keyboard com Touch ID e teclado numérico para Mac com processador Apple', '', 'https://m.media-amazon.com/images/I/51WWerJW6zL._AC_SX569_.jpg', 1, 100, 2131.38, 3, NOW());
