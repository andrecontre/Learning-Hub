SELECT 
    s."product name" as producto, 
    ROUND(SUM(CAST(s.Sales AS REAL)), 2) as ventas_totales,
    SUM(CAST(s.quantity AS INTEGER)) as cantidad_vendida,
    ROUND(SUM(CAST(s.sales AS REAL))/ SUM(CAST(s.quantity AS REAL)), 2) as precio_promedio
FROM sales s 
GROUP BY 
    s."product name"
order BY 
    ventas_totales DESC
LIMIT 10