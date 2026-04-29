INSERT INTO clientes VALUES
(1, 'Juan Perez', 'Monterrey'),
(2, 'Ana Lopez', 'CDMX'),
(3, 'Carlos Ruiz', 'Guadalajara');

INSERT INTO productos VALUES
(1, 'Laptop', 'Electronics', 15000),
(2, 'Mouse', 'Electronics', 500),
(3, 'Teclado', 'Electronics', 800);

INSERT INTO ordenes VALUES
(1, 1, '2024-01-01', 15500),
(2, 2, '2024-02-01', 500),
(3, 1, '2024-03-01', 800);

INSERT INTO detalle_orden VALUES
(1, 1, 1, 1, 15000),
(2, 1, 2, 1, 500),
(3, 2, 2, 1, 500),
(4, 3, 3, 1, 800);

COMMIT;