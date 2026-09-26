-- ══════════════════════════════════════════
--BodegaTech - script de inventario

--autor:[Valentino Parmigiani Valenti]

--fecha:[25/09/2026]
-- ══════════════════════════════════════════
-- ── SECCIÓN DDL ──────────────────────────
--drop table
drop table if exists inventario ;
--create table
create table inventario (
id_producto int not null identity(1,1) primary key,
nombre_producto varchar(100),
categoria varchar(50),--elegi este para poder saber a que categoria especifica pertenece el producto
precio_unitario decimal(10,2),--elegi este para conocer cuanto sale el producto
stock_actual int,
stock_minimo int,
fecha_ingreso date,
activo bit --lo elegi para saber la disponibilidad
)
-- ── SECCIÓN DML ──────────────────────────
--INSERT INTO
insert into inventario
(nombre_producto,categoria,precio_unitario,stock_actual,stock_minimo,fecha_ingreso,activo)
values
('Laptop Pro 15','Computación',1200.00,15,3,'2024-01-10',1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);
--update ventas del dia
update inventario set stock_actual=(12)
where id_producto= 1 and nombre_producto='Laptop Pro 15';
update inventario set stock_actual=(68)
where id_producto= 2 and nombre_producto='Mouse Inalámbrico';
update inventario set stock_actual=(30)
where id_producto= 6 and nombre_producto='Auriculares BT Pro';
--update producto descontinuado
UPDATE inventario set activo=0
where id_producto=8;
--select validaciones
select * from inventario;