**Query 3**:Query to Get Products in a Specific Category

  SELECT p.product_id, p.model, p.price, p.min_quantity, p.print_option1, p.print_option2,
           p.dimensions, p.packing, p.weight, p.material, pc.category
    FROM sql_product p
    JOIN sql_product_to_category pc ON p.product_id = pc.product_id
    WHERE pc.category = 'Home and Garden'

**[Results][4]**:

    | product_id |  model |  price | min_quantity | print_option1 | print_option2 | dimensions | packing | weight | material |        category |
    |------------|--------|--------|--------------|---------------|---------------|------------|---------|--------|----------|-----------------|
    |          2 | Model2 |  99.99 |            5 |    Monochrome |         White |    12x18x6 | Wrapped |      2 |    Metal | Home and Garden |
    |          5 | Model5 | 129.99 |           12 |         Color |         Green |    14x16x7 | Wrapped |    1.8 |  Ceramic | Home and Garden |
    |          8 | Model8 |  59.99 |            8 |    Monochrome |         Brown |     9x13x5 | Wrapped |      1 |  Leather | Home and Garden |
