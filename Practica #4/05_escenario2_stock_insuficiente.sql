
USE practica4_ecommerce;

-- Estado ANTES
SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 4;
SELECT COUNT(*) AS compras_antes FROM compras;

START TRANSACTION;


  INSERT INTO compras (estado, total) VALUES ('pendiente', 45990.00);
  SET @id_compra = LAST_INSERT_ID();

  
  SELECT * FROM compras WHERE id_compra = @id_compra;

  
  UPDATE producto SET stock = stock - 10 WHERE id_producto = 4;

  
ROLLBACK;


SELECT id_producto, nombre, stock FROM producto WHERE id_producto = 4;
SELECT COUNT(*) AS compras_despues FROM compras;
