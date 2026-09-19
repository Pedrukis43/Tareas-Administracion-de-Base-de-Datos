
USE practica4_ecommerce;

-- Estado ANTES
SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 5;
SELECT COUNT(*) AS compras_antes FROM compras;
SELECT COUNT(*) AS pagos_antes   FROM pagos;

START TRANSACTION;


  INSERT INTO compras (estado, total) VALUES ('pendiente', 749.99);
  SET @id_compra = LAST_INSERT_ID();


  UPDATE producto SET stock = stock - 1 WHERE id_producto = 5;


  INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario)
  VALUES (@id_compra, 5, 1, 749.99);

 
  SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 5;

  
  INSERT INTO pagos (id_compra, monto, metodo)
  VALUES (@id_compra, 0.00, 'tarjeta');


ROLLBACK;


SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 5;
SELECT COUNT(*) AS compras_despues FROM compras;
SELECT COUNT(*) AS pagos_despues   FROM pagos;
