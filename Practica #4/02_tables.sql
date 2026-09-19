USE practica4_ecommerce;


DROP TABLE IF EXISTS pagos;
DROP TABLE IF EXISTS detalle_compra;
DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS producto;




CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre      VARCHAR(100)  NOT NULL,
    precio      DECIMAL(10,2) NOT NULL,
    stock       INT           NOT NULL,
    CONSTRAINT chk_producto_precio CHECK (precio > 0),
    CONSTRAINT chk_producto_stock  CHECK (stock >= 0)
) ENGINE=InnoDB;


CREATE TABLE compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    fecha     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado    VARCHAR(20)   NOT NULL DEFAULT 'pendiente',
    total     DECIMAL(10,2) NOT NULL,
    CONSTRAINT chk_compras_estado CHECK (estado IN ('pendiente', 'completada', 'cancelada')),
    CONSTRAINT chk_compras_total  CHECK (total >= 0)
) ENGINE=InnoDB;


CREATE TABLE detalle_compra (
    id_detalle      INT AUTO_INCREMENT PRIMARY KEY,
    id_compra       INT           NOT NULL,
    id_producto     INT           NOT NULL,
    cantidad        INT           NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT chk_detalle_cantidad CHECK (cantidad > 0),
    CONSTRAINT chk_detalle_precio   CHECK (precio_unitario > 0),
    CONSTRAINT fk_detalle_compra   FOREIGN KEY (id_compra)   REFERENCES compras(id_compra),
    CONSTRAINT fk_detalle_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
) ENGINE=InnoDB;


CREATE TABLE pagos (
    id_pago   INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT           NOT NULL,
    monto     DECIMAL(10,2) NOT NULL,
    metodo    VARCHAR(30)   NOT NULL,
    fecha     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_pagos_monto CHECK (monto > 0),
    CONSTRAINT fk_pagos_compra FOREIGN KEY (id_compra) REFERENCES compras(id_compra)
) ENGINE=InnoDB;
