create database ManejoEmpleados;
use ManejoEmpleados;

create table Departamentos(
Id_Departamentos int auto_increment not null primary key,
Departamento_codigo int not null,
Departamento_nombre varchar(35) not null,
Fecha_crea_D date not null,
Hora_crea_D time not null,
Fecha_modifica_D date not null,
Hora_modifica_D time not null
)auto_increment=100;
drop table Empleados;
create table Empleados(
Id_Empleado int auto_increment not null primary key,
Documento_Tipo varchar(5) not null,
Documento_Numero bigint not null,
Nombres varchar(50) not null,
Apellidos varchar(50) not null,
Departamento_Id int not null,
foreign key (Departamento_Id) references Departamentos(Id_Departamentos),
Ciudad varchar(30) not null,
E_mail varchar(50) not null,
Telefono bigint not null,
Fecha_crea_E datetime,
Hora_crea_E time,
Fecha_modifica_E datetime,
Hora_modifica_E time
);

/*INSERTAR DATOS*/

/*TABLA DEPARTAMENTOS*/
select * from Departamentos;
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('1', 'Hawaii', '2022-04-01', '13:08:14', '2022-04-04', '13:16:09');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('75', 'Missouri', '2022-01-02', '20:18:01', '2022-01-11', '7:04:47');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('5', 'New York', '2022-02-04', '13:47:24', '2022-02-28', '20:25:51');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('95186', 'District of Columbia', '2022-01-01', '0:39:53', '2022-05-01', '11:17:33');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('359', 'Ohio', '2022-01-07', '0:50:02', '2022-01-12', '11:19:03');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('4044', 'Florida', '2022-02-03', '20:42:15', '2022-03-02', '16:03:45');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('9', 'Texas', '2022-01-06', '6:15:23', '2022-01-31', '4:43:52');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('71810', 'Connecticut', '2022-01-26', '2:09:24', '2022-02-14', '7:14:38');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('32', 'West Virginia', '2022-04-06', '15:43:30', '2022-05-02', '16:43:24');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('32821', 'Minnesota', '2022-03-21', '17:35:41', '2022-05-05', '9:49:34');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('20', 'Louisiana', '2022-01-22', '0:34:54', '2022-03-24', '20:31:59');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('95', 'Oklahoma', '2022-02-13', '23:51:52', '2022-04-26', '20:44:47');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('6', 'Indiana', '2022-02-14', '22:16:31', '2022-03-06', '14:54:58');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('2035', 'Georgia', '2022-01-23', '20:34:28', '2022-02-17', '23:49:20');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('6480', 'South Carolina', '2022-01-07', '16:51:53', '2022-03-15', '22:27:23');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('283', 'Nevada', '2022-03-09', '2:11:56', '2022-03-28', '6:51:11');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('33', 'Missouri', '2022-02-01', '20:54:26', '2022-04-18', '3:57:54');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('33798', 'California', '2022-03-03', '4:34:56', '2022-05-05', '9:54:17');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('3', 'Pennsylvania', '2022-05-12', '10:37:07', '2022-05-15', '23:18:14');
insert into Departamentos (Departamento_codigo, Departamento_nombre, Fecha_crea_D, Hora_crea_D, Fecha_modifica_D, Hora_modifica_D) values ('185', 'Washington', '2022-01-17', '6:37:21', '2022-02-19', '7:27:46');

/*TABLA DE EMPLEADOS*/
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('com', '8868455927', 'Myca', 'Hackleton', 115, 'Bojongsari', 'mhackleton0@nba.com', '4467381712', '2022-02-19', '16:10:41', '2022-04-05', '0:10:48');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('biz', '7934454953', 'Brietta', 'Farlambe', 112, 'Sukadana', 'bfarlambe1@yellowpages.com', '3652484339', '2022-02-18', '10:11:46', '2022-05-07', '6:02:56');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('mil', '5941362013', 'Darbie', 'Megarry', 100, 'Conchal', 'dmegarry2@dropbox.com', '3876894283', '2022-01-26', '7:39:00', '2022-04-08', '8:29:00');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('gov', '1067096299', 'Glenden', 'Beggan', 114, 'Uglegorsk', 'gbeggan3@flickr.com', '4181956116', '2022-01-12', '13:42:55', '2022-05-07', '0:05:21');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('info', '7269333262', 'Sybyl', 'Althorpe', 105, 'Carvalhinho', 'salthorpe4@1688.com', '9091240435', '2021-12-24', '18:13:02', '2022-05-08', '4:52:31');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('mil', '1679580000', 'Sheffy', 'Kochlin', 102, 'Independencia', 'skochlin5@macromedia.com', '1785076724', '2022-03-12', '1:25:28', '2022-03-21', '16:34:55');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('biz', '4779343909', 'Sonny', 'Yemm', 101, 'Old Shinyanga', 'syemm6@flavors.me', '3604871866', '2022-01-08', '5:42:22', '2022-03-21', '16:27:42');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('biz', '5976782434', 'Philis', 'Mapplethorpe', 110, 'Umbulan', 'pmapplethorpe7@sakura.ne.jp', '7845101428', '2022-01-29', '12:15:17', '2022-03-21', '5:34:48');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('net', '6403640275', 'Colleen', 'Govett', 103, 'Amvrosiyivka', 'cgovett8@walmart.com', '1252274149', '2021-12-08', '0:10:26', '2022-03-25', '0:33:48');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('mil', '2091943495', 'Cassandra', 'McGebenay', 104, 'Brunssum', 'cmcgebenay9@answers.com', '3435407031', '2022-02-10', '11:52:52', '2022-04-20', '18:23:39');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('edu', '3838284569', 'Nanice', 'Cram', 119, 'Gedera', 'ncrama@msn.com', '9891875436', '2021-12-09', '10:37:38', '2022-05-11', '22:27:19');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('gov', '2482529115', 'Ignaz', 'Hedde', 113, 'Piekielnik', 'iheddeb@yellowbook.com', '3003334126', '2021-12-31', '19:58:18', '2022-04-07', '0:31:23');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('net', '4567532325', 'Odella', 'Padwick', 106, 'Quinarayan', 'opadwickc@ucsd.edu', '5004045017', '2021-12-27', '4:03:53', '2022-04-06', '23:07:09');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('biz', '8513528358', 'Netti', 'Cowles', 111, 'Ufa', 'ncowlesd@cbc.ca', '1626962365', '2022-01-24', '21:18:03', '2022-04-18', '21:24:53');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('com', '4920050542', 'Bonnee', 'Collick', 107, 'Dalonghua', 'bcollicke@4shared.com', '3357559587', '2022-01-23', '3:32:04', '2022-04-03', '12:12:41');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('biz', '9067403423', 'Law', 'Bakhrushin', 109, 'Velykyy Burluk', 'lbakhrushinf@acquirethisname.com', '3463460220', '2022-02-21', '9:20:04', '2022-05-10', '15:34:58');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('org', '7891830800', 'Clareta', 'Boat', 116, 'Zerok-Alakadari', 'cboatg@auda.org.au', '9913052165', '2022-02-17', '0:53:47', '2022-05-07', '23:46:21');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('mil', '1623413893', 'Forster', 'Girton', 117, 'Jelcz', 'fgirtonh@ezinearticles.com', '9354589748', '2022-03-07', '17:51:00', '2022-04-25', '21:39:32');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('gov', '9270362205', 'Dal', 'Abriani', 108, 'Västerås', 'dabrianii@admin.ch', '6185796678', '2021-12-13', '2:12:07', '2022-03-26', '20:02:45');
insert into Empleados (Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono, Fecha_crea_E, Hora_crea_E, Fecha_modifica_E, Hora_modifica_E) values ('mil', '3600327666', 'Augustine', 'Danilovic', 115, 'Panineungan', 'adanilovicj@illinois.edu', '4769683209', '2021-12-30', '18:50:18', '2022-03-24', '12:31:41');

