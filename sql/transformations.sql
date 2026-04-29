-- Segmentacion de Clientes
CREATE VIEW rfm AS
SELECT 
    id_cliente,
    MAX(fecha) AS last_purchase,
    COUNT(*) AS frequency,
    SUM(total) AS monetary,
    NTILE(5) OVER (ORDER BY SUM(total) DESC) AS score_monetary-- Segmentamos los clientes a 5 niveles
FROM ordenes
GROUP BY id_cliente;

-- Ventas Acumuladas , utilizando window function
SELECT
    id_cliente,
    fecha,
    total,
    SUM(total) OVER (
        PARTITION BY id_cliente 
        ORDER BY fecha
    ) AS running_total
FROM ordenes;

--Top Productos por Categoria
SELECT *
FROM (
        SELECT 
            p.categoria,
            p.nombre,
            SUM(d.cantidad) AS total_vendido,
            RANK() OVER (
                PARTITION BY p.categoria 
                ORDER BY SUM(d.cantidad) DESC
            ) AS ranking
        FROM detalle_orden d
        JOIN productos p ON d.id_producto = p.id_producto
        GROUP BY p.categoria, p.nombre
) t
WHERE ranking <= 3;