**Query 3**:
    SELECT c.category_name, COUNT(*) AS product_count
    FROM sql_product_categories c
    JOIN sql_product p ON p.product_id = c.product_id
    GROUP BY c.category_name

**[Results][4]**:

    | category_name | product_count |
    |---------------|---------------|
    |   Electronics |             2 |
    |    Home Goods |             1 |
    |    Stationery |             2 |

