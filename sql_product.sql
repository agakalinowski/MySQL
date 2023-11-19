CREATE TABLE `sql_product` (
  `product_id` INT NOT NULL,
  `model` VARCHAR(255),
  `manufacturer_id` INT,
  `price` DECIMAL(10,2),
  `min_quantity` INT,
  `print_option1` VARCHAR(255),
  `print_option2` VARCHAR(255),
  `dimensions` VARCHAR(255),
  `packing` VARCHAR(255),
  `weight` DECIMAL(10,2),
  `material` VARCHAR(255),
  PRIMARY KEY (`product_id`)
);
