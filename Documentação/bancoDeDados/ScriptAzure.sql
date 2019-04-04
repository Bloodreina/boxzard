create table tbLogin (
idEmail int primary key identity,
email varchar (50),
senha varchar  (10)
);

create table tbTemperatura (
idTemp int primary key identity,
maxIdeal varchar (5),
minIdeal varchar (5),
);

create table tbUmidade (
idUmidade int primary key identity,
maxIdeal varchar (5),
minIdeal varchar (5)
);

create table tbGalpao (
idGalpao int primary key identity,
tamanho varchar (8),
tempManu varchar (5),
umidManu varchar (5),
qtdArcondicionado varchar (5)
);

create table tbSensor (
idSensor int primary key identity,
tipo varchar (5),
fkGalpao int foreign key references tbGalpao (idGalpao)
);

create table tbDadosCapturados (
idDado int primary key identity,
tempCap varchar (5),
umidCap varchar (5),
dataCapturada smalldatetime,
fkSensor int foreign key references tbSensor (idSensor)
);

create table produto (
idProduto int primary key identity,
nomeProd varchar (30),
tipoProd varchar (30),
fkTemperatura int foreign key references tbTemperatura (idTemp)
);

drop table produto;

select * from produto;

create table produto (
idProduto int primary key identity,
nomeProd varchar (30),
tipoProd varchar (30),
fkTemperatura int foreign key references tbTemperatura (idTemp),
FkUmidade int foreign key references tbUmidade (idUmidade),
fkGalpao int foreign key references tbGalpao (idGalpao)
);

create table usuario (
idUsuario int primary key identity,
nomeCompleto varchar (40),
cpf_cnpj varchar (18),
estado varchar (30),
cidade varchar (20),
logradouro varchar (40),
numero int,
complemento varchar (20),
fkEmail int foreign key references tbLogin (idEmail)
);

create table user_galpao (
fkUsuario int foreign key references usuario (idUsuario),
fkGalpao int foreign key references tbGalpao (idGalpao)
);

create table telefone (
idTelefone int primary key identity,
telefone int,
fkUsuario int foreign key references usuario (idUsuario)
);

select * from usuario;