use ejercicio_1_sql;
create database ejercicio_1;
use ejercicio_1;

create table clientes(
id_cliente int not null identity(1,1) primary key, -- este tipo de dato lo elegi para identificar unicamente a un cliente
nombre varchar(100), -- el nombre para poner el nombre que el eliga 
perfil_bio text, -- para poner mas o menos que hace el cliente o alguna cosa que se quiere saber de el
fecha_registro date -- para saber a que hora se registro el cliente, por si es necesario
);

select * from clientes;

create table productos(
id_producto int not null identity(1,1) primary key, -- este tipo de dato lo elegi para identificar unicamente un producto
descripcion varchar (255), -- para explicar algo sobre el producto
precio decimal(10,2), -- precio del producto
esta_activo bit -- para saber si el producto esta disponible ono, no te dice el stock especifico
);

select * from productos





