SELECT 
    s.Category AS Categoria, 
    s."Sub-Category" AS Subcategoria,
    SUM(CAST(s.Sales AS FLOAT)) AS Ventas,
    COUNT(DISTINCT(s."Order ID")) AS Pedidos
FROM sales s
GROUP BY 
    s.Category, 
    s."Sub-Category"
HAVING
    COUNT(DISTINCT(s."Order ID")) > 50
ORDER BY
    s.Category, 
    Ventas DESC;