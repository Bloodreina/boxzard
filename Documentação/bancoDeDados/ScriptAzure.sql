create table tbLogin (
    codEmail int primary key identity,
    email varchar(30) NOT NULL,
    senha varchar(30) NOT NULL,
);

create table tbEndereco (
    codEndereco int primary key identity,
    cep varchar(12) NOT NULL,
    numero int NOT NULL,
    complemento varchar(20)
);

create table tbAmbienteIdeal (
    codAmbiente int primary key identity,
    minTempIdeal float NOT NULL,
    maxTempIdeal float NOT NULL,
    minHumyIdeal float NOT NULL,
    maxHumyIdeal float NOT NULL
);

create table tbAmbienteGe (
    codAmbienteGe int primary key identity,
    maxTempIdeal float NOT NULL,
    minTempIdeal float NOT NULL,
    maxHumyIdeal float NOT NULL,
    minHumyIdeal float NOT NULL
);

create table tbGalpao (
    codGalpao int primary key identity,
    tamanho float NOT NULL,
    qtdArcondicionado int NOT NULL,
    fkEndereco int foreign key references tbEndereco(codEndereco)
);

create table tbSensor (
    codSensor int primary key identity,
    tipo varchar(20) NOT NULL,
    fkGalpao int foreign key references tbGalpao (codGalpao)
);

create table tbDadosCapturados (
    codDado int primary key identity,
    tempCapturada float NOT NULL,
    humyCapturada float  NOT NULL,
    dataCapturada smalldatetime  NOT NULL,
    fkSensor int foreign key references tbSensor (codSensor)
);

create table tbMetricas (
    codMetrica int primary key identity,
    min float NOT NULL,
    media float NOT NULL,
    mediana float NOT NULL,
    max float NOT NULL,
    identificador int NOT NULL,
    fkSensor int foreign key references tbSensor(codSensor)
);

create table tbProduto (
    codProduto int primary key identity,
    nomeProduto varchar (25) NOT NULL,
    tipoProduto varchar (20) NOT NULL,
    fkAmbienteIdeal int foreign key references tbAmbienteIdeal (codAmbiente),
    fkGalpao int foreign key references tbGalpao (codGalpao)
);

create table tbUsuario (
    codUsuario int primary key identity,
    cpf_cnpj varchar (20) NOT NULL,
    nomeCompleto varchar (40) NOT NULL,
    fkEmail int foreign key references tbLogin (codEmail),
    fkEndereco int foreign key references tbEndereco(codEndereco)
);

create table tbTelefone (
    codTelefone int primary key identity,
    telefone varchar (15) NOT NULL,
    fkUsuario int foreign key references tbUsuario (codUsuario)
);