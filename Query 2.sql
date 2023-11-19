**Query 2**:Query to Get Products in a Specific Category
  
 SELECT p.product_id, p.model, p.price, p.min_quantity, p.print_option1, p.print_option2,
           p.dimensions, p.packing, p.weight, p.material, pc.category, cf.filter
    FROM sql_product p
    JOIN sql_product_to_category pc ON p.product_id = pc.product_id
    LEFT JOIN sql_category_filter cf ON p.product_id = cf.product_id

**[Results][3]**:

    | product_id |   model |  price | min_quantity | print_option1 | print_option2 | dimensions |  packing | weight |        material |        category | filter |
    |------------|---------|--------|--------------|---------------|---------------|------------|----------|--------|-----------------|-----------------|--------|
    |          1 |  Model1 |  49.99 |           10 |         Color |         Black |    10x15x5 |    Boxed |    1.5 |         Plastic |     Electronics |   1001 |
    |          2 |  Model2 |  99.99 |            5 |    Monochrome |         White |    12x18x6 |  Wrapped |      2 |           Metal | Home and Garden |   2002 |
    |          3 |  Model3 | 149.99 |            8 |         Color |          Blue |     8x12x4 | Packaged |    1.2 |           Glass |         Fashion |   3003 |
    |          4 |  Model4 |  79.99 |           15 |    Monochrome |           Red |    15x20x8 |    Boxed |    2.5 |            Wood |     Electronics |   1004 |
    |          5 |  Model5 | 129.99 |           12 |         Color |         Green |    14x16x7 |  Wrapped |    1.8 |         Ceramic | Home and Garden |   2005 |
    |          6 |  Model6 |  89.99 |            7 |    Monochrome |        Silver |    11x14x6 |    Boxed |    2.2 |        Aluminum |         Fashion |   3006 |
    |          7 |  Model7 | 169.99 |           20 |         Color |          Gold |   18x22x10 | Packaged |    2.8 | Stainless Steel |     Electronics |   1007 |
    |          8 |  Model8 |  59.99 |            8 |    Monochrome |         Brown |     9x13x5 |  Wrapped |      1 |         Leather | Home and Garden |   2008 |
    |          9 |  Model9 | 119.99 |           18 |         Color |        Purple |    13x17x7 |    Boxed |    2.3 |          Rubber |         Fashion |   3009 |
    |         10 | Model10 |  99.99 |           10 |    Monochrome |        Yellow |    16x20x9 | Packaged |      2 |         Plastic |     Electronics |   1010 |
