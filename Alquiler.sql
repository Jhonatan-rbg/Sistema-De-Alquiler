Create database Alquiler
use Alquiler

create table Logueo
(
ID int identity (1,1) primary key,
 Correo Varchar (25),
 Clave varchar (12)
)

insert into Logueo values 
('Admin','123');

create table clientes
(
ID int identity (1,1) primary key,
 Nombre Varchar (40),
 Cedula varchar (12),
 Telefono varchar (12),
 Direccion varchar (40),
 Email varchar (50)
)

create table Proveedor
(
ID int identity (1,1) primary key,
 Nombre Varchar (40),
 Produco varchar (20),
 Telefono varchar (12),
 Direccion varchar (50),
 Email varchar (12)
)

create table producto
(
ID int identity (1,1) primary key,
 proveedor Varchar (40),
 Produco varchar (30),
 cantidad int,
 precio int,
 totalapagar int
)


CREATE TABLE Factura (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    ClienteID int  FOREIGN KEY  REFERENCES Clientes(ID),
   ProductoID int FOREIGN KEY  REFERENCES Producto(ID),
    Cantidad INT,
    Precio int,
    Total int,
    Fecha DATE,
    Fecha_Entrega DATE
);

CREATE TABLE Entregado (
    ID int PRIMARY KEY IDENTITY(1,1),
    FacturaID int,
    ClienteID varchar(40),
    Producto varchar(20),
    Fecha_Entrega date

);

select * from Entregado

