SELECT 
    s.[product name], 
    round(sum(CAST(s.Sales AS REAL)), 2) as ventas_totales,
    sum(CAST(s.quantity AS INTEGER)) as total_quantity,
    round(SUM(CAST(s.sales AS REAL))/ sum(CAST(s.quantity AS REAL)), 2) as average_price
FROM sales s 
GROUP BY 
    s.[product name]
order BY 
    ventas_totales DESC
LIMIT 10