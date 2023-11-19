Query 4: Average Price and Weight by Category
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

**[Results][5]**:

    |        category | avg_price | avg_weight |
    |-----------------|-----------|------------|
    |     Electronics |     99.99 |        2.2 |
    |         Fashion |    119.99 |        1.9 |
    | Home and Garden | 96.656667 |        1.6 |
