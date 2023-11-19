 **Query 1**: Retrieve All Products and Categories:

    SELECT p.product_id, p.product_code, p.name, c.category_id, c.category_name
    FROM sql_product p
    JOIN sql_product_categories c ON p.product_id = c.product_id

**[Results][2]**:

    | product_id | product_code |       name | category_id | category_name |
    |------------|--------------|------------|-------------|---------------|
    |          1 |      1234567 |  Powerbank |         101 |   Electronics |
    |          2 |      2345678 |        Pen |         102 |    Stationery |
    |          3 |      3456789 |    Blanket |         103 |    Home Goods |
    |          4 |      4567890 |   Notebook |         104 |    Stationery |
    |          5 |      5678901 | Headphones |         105 |   Electronics |

