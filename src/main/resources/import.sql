/* Populate tables */
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (1, 'Andrés', 'Pérez', 'andres@gmail.com', '2020-04-02', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (2, 'Juana', 'González', 'juana@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (3, 'Eduardo', 'Martínez', 'eduardo@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (4, 'Pablo', 'Flores', 'pablo@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (5, 'María', 'González', 'maria@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (6, 'Paula', 'Gómez', 'paula@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (7, 'Nuria', 'Cruz', 'nuria@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (8, 'Oscar', 'González', 'oscar@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (9, 'Ana', 'Martínez', 'ana@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (10, 'Luisa', 'Pérez', 'luisa@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (11, 'Luis', 'Cruz', 'luis@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (12, 'Álvaro', 'Gómez', 'alvaro@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (13, 'Juan', 'González', 'juan@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (14, 'Pepe', 'Flores', 'pepe@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (15, 'Víctor', 'González', 'victor@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (16, 'Valeria', 'Pérez', 'valeria@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (17, 'Daniella', 'Gómez', 'daniella@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (18, 'Olivia', 'González', 'olivia@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (19, 'Julia', 'Martínez', 'julia@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (20, 'Guille', 'Cruz', 'guille@gmail.com', '2020-03-11', '');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (21, 'Diego', 'Flores', 'diego@gmail.com', '2020-03-11', '');

INSERT INTO productos (nombre, precio, create_at) VALUES ('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Cámara Digital', 123490, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Apple Ipod shuffle', 12134, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Notebook', 42112, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Hewlett Packard', 627452, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Bianchi Bicicleta', 72730, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mica Comoda 5 Cajones', 52231, NOW());

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura de equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', 'Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3, 2, 6);

INSERT INTO users (username, password, enabled) VALUES ('edu', '$2a$10$fWeiUJ87csKzlBTimGzxeuPKMM0Bpaju6f6doLITyVo.XUHw4Jl4u', 1);
INSERT INTO users (username, password, enabled) VALUES ('admin', '$2a$10$lEpqi3NSBVdnTFgHcd87j.x5AkC87jAglMLDQ5X5Fpvg4Psgyd54u', 1);

INSERT INTO authorities (user_id, authority) VALUES (1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_ADMIN');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_USER');
