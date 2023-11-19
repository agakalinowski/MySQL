# Data base commercial

## Overview

Welcome to the [Data base commercial] repository! This project is a commercial application designed for 123gifts.pl.

## Database Structure

The project relies on a MySQL database with the following tables:


### [`sql_product`](https://github.com/agakalinowski/MySQL/blob/main/sql_product.sql)

- `product_id` (INT): Unique identifier for each product.
- `model` (VARCHAR): Model name of the product.
- `manufacturer_id` (INT): Identifier for the manufacturer.
- `price` (DECIMAL): Price of the product.
- `min_quantity` (INT): Minimum quantity for purchase.
- `print_option1` (VARCHAR): First print option.
- `print_option2` (VARCHAR): Second print option.
- `dimensions` (VARCHAR): Product dimensions.
- `packing` (VARCHAR): Packing information.
- `weight` (DECIMAL): Product weight.
- `material` (VARCHAR): Material of the product.

### [`sql_product_description`](https://github.com/agakalinowski/MySQL/blob/main/sql_product_description.sql)

- `product_id` (INT): Corresponding product identifier.
- `name` (VARCHAR): Name of the product.
- `description` (TEXT): Detailed product description.

### [`sql_product_to_category`](https://github.com/agakalinowski/MySQL/blob/main/sql_product_to_category.sql)

- `product_id` (INT): Product identifier.
- `category` (VARCHAR): Category to which the product belongs.

### [`sql_category_filter`](https://github.com/agakalinowski/MySQL/blob/main/sql_category_filter.sql)

- `product_id` (INT): Product identifier.
- `category` (VARCHAR): Category associated with the product.
- `filter` (INT): Filter information.

## Queries

In the [directory, you will find example SQL queries that demonstrate how to retrieve information from the database.

### Query Examples

1. **Product Details with Description:** [sql](https://github.com/agakalinowski/MySQL/blob/main/Query%201.sql) or [no extention](https://github.com/agakalinowski/MySQL/blob/main/Query%201:%20List%20of%20Products%20with%20Full%20Details.md)
   - Retrieve product details along with their descriptions.

2. **Products in a Specific Category:** [sql](https://github.com/agakalinowski/MySQL/blob/main/Query%202.sql) or [no extention](https://github.com/agakalinowski/MySQL/blob/main/Query%202%3A%20Products%20with%20Specific%20Print%20Options%20and%20Categories.md)
   - Retrieve products that belong to a specific category.

3. **Products with Category Filters:** [sql](https://github.com/agakalinowski/MySQL/blob/main/Query%203.sql) or [no extention](https://github.com/agakalinowski/MySQL/blob/main/Query%203.%20Get%20Products%20in%20a%20Specific%20Category.md)
   - Retrieve products along with their associated category filters.
  
4. **Average Price and Weight by Category:** [sql](https://github.com/agakalinowski/MySQL/blob/main/Query%204.sql) or [no extention](https://github.com/agakalinowski/MySQL/blob/main/Query%204%3A%20Average%20Price%20and%20Weight%20by%20Category.md)
   - Retrieve the average price and weight of products grouped by category.

## Intentional Changes

For the purpose of this README, the actual data used in the project has been replaced with generic placeholders to maintain confidentiality. Any specific references to products, categories, or filters are intentional modifications for demonstration purposes only.
