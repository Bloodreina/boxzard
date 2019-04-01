create database boxzard;
use boxzard;

create table Login(
idEmail int primary key auto_increment,
email varchar(50) not null,
senha varchar(10) not null
);

create table Temperatura(
idTemp int primary key auto_increment, 	
maxIdeal varchar(5) not null,
minIdeal varchar(5) not null
);

create table Umidade(
idUmid int primary key auto_increment, 
maxIdeal varchar(5) not null,
minIdeal varchar (5) not null
);

create table galpao(
idGalpao int primary key auto_increment,
tamanho varchar (8) not null,
tempManu varchar (5) not null,
umidManu varchar (5) not null,
qtdAr varchar (5) not null

);

create table Sensor (
idSensor int primary key auto_increment,
tipo varchar (5) not null,
fkGalpao int not null,
foreign key (fkGalpao) references Galpao(idGalpao)
);

create table  Dados(
idDado int primary key auto_increment,
tempCap varchar (5) not null,
umidCap varchar (5) not null,
dia datetime default current_timestamp,
fkSensor int not null,
foreign key(fkSensor) references Sensor(idSensor)
);

create table Produto (
idProd int primary key auto_increment,
nomeProd varchar (30) not null,
tipoProd varchar(30) not null,
fkTemp int not null,
fkUmid int not null,
fkGalpao int not null,
foreign key (fkTemp)references Temperatura(idTemp),
foreign key (fkUmid)references Umidade(idUmid),
foreign key (fkGalpao) references Galpao(idgalpao)
);



create table usuario(
idUsuario int primary key auto_increment,
nomeCompleto varchar (40) not null,
cpf_Cnpj varchar(18) not null,
estado varchar(3) not null,
cidade varchar(20) not null,
logradouro varchar (40) not null,
numero int not null,
complemento varchar (20),
fkEmail int not null,
foreign key (fkEmail) references Login(idEmail)
);
create table user_galpao (
fkUsuario int not null,
fkGalpao int not null,
foreign key (fkUsuario) references Usuario(idUsuario),
foreign key (fkGalpao)  references Galpao(idGalpao) 
);
 
 
create table Telefone (
idTelefone int primary key auto_increment,
telefone int(15) not null,
fkUser int not null,
foreign key (fkUser) references Usuario(idUsuario) 
);

SP_INS_ALTERNATIVA_CORRETA


