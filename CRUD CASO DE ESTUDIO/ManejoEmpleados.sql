create database ManejoEmpleados;
use ManejoEmpleados;
drop database ManejoEmpleados;
create table Departamentos(
Id_Departamentos int auto_increment not null primary key,
Departamento_codigo int not null,
Departamento_nombre varchar(35) not null,
Fecha_crea_D TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Fecha_modifica_D TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)auto_increment=100;
drop table Empleados;
create table Empleados(
Id_Empleado int auto_increment not null primary key,
Documento_Tipo enum('RC','TI','CC','CE'),
Documento_Numero bigint not null,
Nombres varchar(50) not null,
Apellidos varchar(50) not null,
Departamento_Id int not null,
foreign key (Departamento_Id) references Departamentos(Id_Departamentos),
Ciudad varchar(30) not null,
E_mail varchar(50) not null,
Telefono bigint not null,
Fecha_crea_E TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Fecha_modifica_E TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*INSERTAR DATOS*/

/*TABLA DEPARTAMENTOS*/
select * from Departamentos;
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('153', 'Hawaii', '2022-04-01','2022-04-04');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('75', 'Missouri', '2022-01-02', '2022-01-11');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('5', 'New York', '2022-02-04','2022-02-28');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('186', 'District of Columbia', '2022-01-01', '2022-05-01');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('359', 'Ohio', '2022-01-07','2022-01-12');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('404', 'Florida', '2022-02-03', '2022-03-02');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('9', 'Texas', '2022-01-06', '2022-01-31');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('710', 'Connecticut', '2022-01-26','2022-02-14');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('32', 'West Virginia', '2022-04-06','2022-05-02');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Fecha_modifica_D) values ('821', 'Minnesota', '2022-03-21','2022-05-05');
/*TABLA DE EMPLEADOS*/
select * from Empleados;
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('CC', '8364867', 'Myca', 'Hackleton', 109, 'Bojongsari', 'mhackleton0@nba.com', '4467381712', '2022-02-19', '2022-04-05');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('RC', '7934953', 'Brietta', 'Farlambe', 106, 'Sukadana', 'bfarlambe1@yellowpages.com', '3652484339', '2022-02-18', '2022-05-07');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('CC', '59413013', 'Darbie', 'Megarry', 100, 'Conchal', 'dmegarry2@dropbox.com', '3876894283', '2022-01-26', '2022-04-08');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('CC', '10699', 'Glenden', 'Beggan', 104, 'Uglegorsk', 'gbeggan3@flickr.com', '4181956116', '2022-01-12', '2022-05-07');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('TI', '7263262', 'Sybyl', 'Althorpe', 105, 'Carvalhinho', 'salthorpe4@1688.com', '9091240435', '2021-12-24', '2022-05-08');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('CE', '16700', 'Sheffy', 'Kochlin', 102, 'Independencia', 'skochlin5@macromedia.com', '1785076724', '2022-03-12', '2022-03-21');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('TI', '477939', 'Sonny', 'Yemm', 101, 'Old Shinyanga', 'syemm6@flavors.me', '3604871866', '2022-01-08', '2022-03-21');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('TI', '59782434', 'Philis', 'Mapplethorpe', 108, 'Umbulan', 'pmapplethorpe7@sakura.ne.jp', '7845101428', '2022-01-29', '2022-03-21');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('CC', '640275', 'Colleen', 'Govett', 102, 'Amvrosiyivka', 'cgovett8@walmart.com', '1252274149', '2021-12-08', '2022-03-25');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Fecha_modifica_E) values ('RC', '2091495', 'Cassandra', 'McGebenay', 107, 'Brunssum', 'cmcgebenay9@answers.com', '3435407031', '2022-02-10', '2022-04-20');

