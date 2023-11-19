
# Database Structure

The project relies on a MySQL database with the following tables:

## `sql_product`

- `product_id` (INT): Unique identifier for each product.
- `product_code` (VARCHAR): Code of the product (7 numbers).
- `name` (VARCHAR): Name of the product.

## `sql_product_categories`

- `product_id` (INT): Product identifier.
- `category_id` (INT): Primary key for category.
- `category_name` (VARCHAR): Category associated with the product.


### Query Examples

1. **Retrieve All Products and Categories:** [sql](https://github.com/agakalinowski/MySQL/blob/main/NEW!/Query_1.sql) or [quickly result](http://sqlfiddle.com/#!9/574705/4)

2. **Filter Products by Category Electronics:** [sql](https://github.com/agakalinowski/MySQL/blob/main/NEW!/Query_2.sql) or [quickly result](http://sqlfiddle.com/#!9/574705/5)

3. **Count the Number of Products in Each Category:** [sql](https://github.com/agakalinowski/MySQL/blob/main/NEW!/Query_3.sql) or [quickly result](http://sqlfiddle.com/#!9/574705/6)
   
  
## Intentional Changes

For the purpose of this README, the actual data used in the project has been replaced with generic placeholders to maintain confidentiality. Any specific references to products, categories, or filters are intentional modifications for demonstration purposes only.

## Important Information

This repository contains confidential information and/or files intended solely for viewing. Please adhere to the following guidelines:

- **Confidentiality:** The information within this repository is confidential, and copying or using it for commercial purposes is not allowed without prior consent.
- **Restrictions:** Copying, reproducing, or using the content of this repository for purposes other than viewing is strictly prohibited.

Please read the full documentation before using this data.

Thank you for your understanding and compliance with the guidelines.

