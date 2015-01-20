create database FerreteriaSistema;
drop database FerreteriaSistema;
create database FerreteriaSA;
use FerreteriaSA;

CREATE table Producto (
id_Producto int,
stock int,
costo float,
nombre varchar(45),
PRIMARY KEY (id_Producto)
);

CREATE TABLE tipo(
id_Producto int,
tipo varchar(30),
Primary Key (tipo),
foreign key (id_Producto)
 references Producto (id_Producto)
);

DROP TABLE tipo;

CREATE TABLE tipo(
id_Producto int,
idtipo varchar(30),
Primary Key (idtipo),
foreign key (id_Producto)
 references Producto (id_Producto)
);
DROP TABLE Descripcion;

CREATE TABLE Descripcion(
idDescripcion varchar(100),
tamaño int,
color varchar(12),
idtipo varchar(30),
voltaje_maximo int,
primary key (idDescripcion),
foreign key (idtipo) references tipo (idtipo)
);

CREATE TABLE Proveedor(
idProveedor int,
nombre varchar(30),
direccion varchar(30),
Primary key (idProveedor)
);

CREATE TABLE telefono_proveedor(

idProveedor int,
telefono int,
foreign key (idProveedor)
references Proveedor (idProveedor)
);

CREATE TABLE proveeproducto(
idProveedor1 int,
id_Producto1 int,

foreign key (idProveedor1) references Proveedor (idProveedor),
foreign key (id_Producto1) references Producto (id_Producto)
);

CREATE TABLE factura(
codigofactura int ,
fecha date,
ruc varchar(15),
razonsocial varchar(30),
cedulacliente int,
clientecedula int,
PRIMARY KEY (codigofactura),
 foreign key (clientecedula) references cliente (cedula)
);

CREATE TABLE cliente(
cedula int,
nombre varchar(60),
telefono int,
direccion varchar (50),
PRIMARY KEY (cedula)
);

CREATE TABLE Devolucion(
FechaDevolucion date,
idDevolucion int,
idVenta int,
comentario varchar(180),
PRIMARY KEY (idDevolucion),
foreign key (idVenta) references factura (codigofactura)
);

CREATE TABLE Detalle(
idFactura int,
idProducto int,
cantidad int,
subtotal float,
iva float,
total float,
 foreign key (idfactura) references factura (codigofactura),
 foreign key (idProducto) references Producto (id_Producto)
);