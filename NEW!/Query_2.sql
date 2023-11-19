**Query 2**: Filter Products by Category (e.g., Electronics):

    SELECT p.product_id, p.product_code, p.name, c.category_id, c.category_name
    FROM sql_product p
    JOIN sql_product_categories c ON p.product_id = c.product_id
    WHERE c.category_name = 'Electronics'

**[Results][3]**:

    | product_id | product_code |       name | category_id | category_name |
    |------------|--------------|------------|-------------|---------------|
    |          1 |      1234567 |  Powerbank |         101 |   Electronics |
    |          5 |      5678901 | Headphones |         105 |   Electronics |
