
USE practica4_ecommerce;


SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 2;

START TRANSACTION;


  INSERT INTO compras (estado, total) VALUES ('pendiente', 599.00);
  SET @id_compra = LAST_INSERT_ID();

 
  UPDATE producto SET stock = stock - 2 WHERE id_producto = 2;


  INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario)
  VALUES (@id_compra, 2, 2, 299.50);

  
  INSERT INTO pagos (id_compra, monto, metodo)
  VALUES (@id_compra, 599.00, 'tarjeta');

  
  UPDATE compras SET estado = 'completada' WHERE id_compra = @id_compra;

COMMIT;


SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 2;
SELECT * FROM compras;
SELECT * FROM detalle_compra;
SELECT * FROM pagos;
