**MySQL 5.6 Schema Setup**:

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
    
    CREATE TABLE `sql_product_description` (
      `product_id` INT NOT NULL,
      `name` VARCHAR(255),
      `description` TEXT,
      PRIMARY KEY (`product_id`)
    );
    
    
    CREATE TABLE `sql_product_to_category` (
      `product_id` INT NOT NULL,
      `category` VARCHAR(255),
      PRIMARY KEY (`product_id`)
    );
    
    CREATE TABLE `sql_category_filter` (
      `product_id` INT NOT NULL,
      `category` VARCHAR(255),
      `filter` INT,
      PRIMARY KEY (`product_id`)
    );
    
    INSERT INTO `sql_product` VALUES
    (1, 'Model1', 101, 49.99, 10, 'Color', 'Black', '10x15x5', 'Boxed', 1.5, 'Plastic'),
    (2, 'Model2', 102, 99.99, 5, 'Monochrome', 'White', '12x18x6', 'Wrapped', 2.0, 'Metal'),
    (3, 'Model3', 103, 149.99, 8, 'Color', 'Blue', '8x12x4', 'Packaged', 1.2, 'Glass'),
    (4, 'Model4', 104, 79.99, 15, 'Monochrome', 'Red', '15x20x8', 'Boxed', 2.5, 'Wood'),
    (5, 'Model5', 105, 129.99, 12, 'Color', 'Green', '14x16x7', 'Wrapped', 1.8, 'Ceramic'),
    (6, 'Model6', 106, 89.99, 7, 'Monochrome', 'Silver', '11x14x6', 'Boxed', 2.2, 'Aluminum'),
    (7, 'Model7', 107, 169.99, 20, 'Color', 'Gold', '18x22x10', 'Packaged', 2.8, 'Stainless Steel'),
    (8, 'Model8', 108, 59.99, 8, 'Monochrome', 'Brown', '9x13x5', 'Wrapped', 1.0, 'Leather'),
    (9, 'Model9', 109, 119.99, 18, 'Color', 'Purple', '13x17x7', 'Boxed', 2.3, 'Rubber'),
    (10, 'Model10', 110, 99.99, 10, 'Monochrome', 'Yellow', '16x20x9', 'Packaged', 2.0, 'Plastic');
    
    
    INSERT INTO `sql_product_description` VALUES
    (1, 'Product1', 'This is the description for Product1.'),
    (2, 'Product2', 'Description for Product2 goes here.'),
    (3, 'Product3', 'Product3 is a high-quality item with unique features.'),
    (4, 'Product4', 'Check out Product4 for an amazing experience.'),
    (5, 'Product5', 'Explore the features of Product5.'),
    (6, 'Product6', 'Product6 is designed for style and functionality.'),
    (7, 'Product7', 'Get the latest technology with Product7.'),
    (8, 'Product8', 'Experience luxury with Product8.'),
    (9, 'Product9', 'Product9 is perfect for your everyday needs.'),
    (10, 'Product10', 'Discover the versatility of Product10.');
    
    INSERT INTO `sql_product_to_category` VALUES
    (1, 'Electronics'),
    (2, 'Home and Garden'),
    (3, 'Fashion'),
    (4, 'Electronics'),
    (5, 'Home and Garden'),
    (6, 'Fashion'),
    (7, 'Electronics'),
    (8, 'Home and Garden'),
    (9, 'Fashion'),
    (10, 'Electronics');
    
    INSERT INTO `sql_category_filter` VALUES
    (1, 'Electronics', 1001),
    (2, 'Home and Garden', 2002),
    (3, 'Fashion', 3003),
    (4, 'Electronics', 1004),
    (5, 'Home and Garden', 2005),
    (6, 'Fashion', 3006),
    (7, 'Electronics', 1007),
    (8, 'Home and Garden', 2008),
    (9, 'Fashion', 3009),
    (10, 'Electronics', 1010);
**Query 4**:

    SELECT 
            pc.category, 
            AVG(p.price) AS avg_price, 
            AVG(p.weight) AS avg_weight
        FROM 
            sql_product p
        JOIN 
            sql_product_to_category pc ON p.product_id = pc.product_id
        GROUP BY 
            pc.category
    

**[Results][2]**:

    |        category | avg_price | avg_weight |
    |-----------------|-----------|------------|
    |     Electronics |     99.99 |        2.2 |
    |         Fashion |    119.99 |        1.9 |
    | Home and Garden | 96.656667 |        1.6 |

  [1]: http://sqlfiddle.com/#!9/d0d3b7/15
  [2]: http://sqlfiddle.com/#!9/d0d3b7/15/0
