create database ejercicio_1_sql;--creo la base de datos

use ejercicio_1_sql;-- comando para utilizar la base de datos

create table clientes (
id_cliente int not null identity (1,1) primary key,-- este tipo de dato lo elegi para identificar unicamente a un cliente
nombre varchar(50) not null,--el nombre para poner el nombre que el eliga 
dni varchar(8) not null,--para identificar tambien al cliente externamente con el dni
telefono varchar(12) not null,--para tener en el registro su numero, por si hay que darle algun aviso o algo
perfil_cliente text,--para poner mas o menos que hace el cliente o alguna cosa que se quiere saber de el
fecha_registro datetime not null--para saber a que hora se registro el cliente, por si es necesario
);

select * from clientes;

create table productos (
id_producto int not null identity(1,1) primary key,-- este tipo de dato lo elegi para identificar unicamente un producto
categoria varchar(15) not null,-- para saber a que categoria especifica pertenece ese producto, cuando tenemos muchos tipos de productos
sub_categoria varchar (15) not null,-- para saber a que sub_categoria especifica pertenece ese producto, cuando hay muchos productos en una categoria
descripcion text,-- para explicar algo sobre el producto
precio decimal(6,2) not null,-- precio del producto
disponibilidad bit -- para saber si el producto esta disponible ono, no te dice el stock especifico
);

select * from productos;