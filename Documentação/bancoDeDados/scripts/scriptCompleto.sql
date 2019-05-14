create table tbEndereco(
	codEndereco int primary key identity,
	cep varchar(9) not null,
	estado varchar(30)not null,
	cidade varchar(30) not null,
	logradouro varchar(30) not null,
	numero int not null,
	complemento varchar(30)
);

create table tbUsuario(
	codUsuario int primary key identity,
	cpf_cnpjUsuario varchar(14) not null,
	tipoIdentificacao varchar(2) check(tipoIdentificacao = 'PF' or tipoIdentificacao = 'PJ') not null,
	nomeUsuario varchar(45) not null,
	razaoSocial varchar(50),
	emailUsuario varchar(45) not null,
	senhaUsuario varchar(256) not null,
	dataAquisicao datetime not null,
	fkEndereco int,
	foreign key (fkEndereco) references tbEndereco(codEndereco)
);

create table tbTelefone(
	codTelefone int primary key identity,
	numTelefone varchar(15),
	fkUsuario int,
	foreign key (fkUsuario) references tbUsuario(codUsuario)
);

create table tbGalpao (
	codGalpao int primary key identity, 
	tamanhoGalpao float,
	qtdArCond int,
	fkEndereco int,
	foreign key (fkEndereco) references tbEndereco(codEndereco),
    fkUsuario int foreign key references tbUsuario(codUsuario)
);

create table tbSensor(
	codSensor int primary key identity,
	tipoSensor varchar(6),
	fkGalpao int,
	foreign key (fkGalpao) references tbGalpao(codGalpao)
);

create table tbDados(
	codDados int primary key identity,
	dataCapturada datetime,
	tempCapturada float,
	umidCapturada float,
	fkSensor int,
	foreign key (fkSensor) references tbSensor(codSensor)
);

create table tbProduto(
	codProduto int primary key identity,
	tipoProduto varchar(30),
	nomeProduto varchar(40),
	tempMin float,
	tempMax float,
	umidMin float,
	umidMax float,
	fkGalpao int,
	foreign key (fkGalpao) references tbGalpao(codGalpao)
);

create table tbAmbiente(
	codAmbiente int primary key identity,
	tempMaxGenerico float,
	umidMaxGenerico float,
	tempMinGenerico float,
	umidMinGenerico float,
	fKProduto int,
	foreign key (fkProduto) references tbProduto(codProduto)
);

create table tbAmbiente(
	codAmbiente int primary key identity,
	tempMinGenerico float,
	tempMaxGenerico float,
	umidMinGenerico float,
	umidMaxGenerico float,
	fKProduto int,
	foreign key (fkProduto) references tbProduto(codProduto)
);

insert into tbEndereco values
	('02304001', 'SP', 'São Paulo', 'Rua Augusta', 700, 'Lote 1'),
	('01311000', 'SP', 'São Paulo', 'Avenida Paulista', 250, 'Lote 1'),
	('07178580', 'SP', 'Guarulhos', 'Rodovia Presidente Dutra', 1100, 'Setor A'),
	('01302001', 'SP', 'São Paulo', 'Rua da Consolação', 55, 'Setor B'),
	('01207000', 'SP', 'São Paulo', 'Rua Santa Ifigênia', 311, 'Setor A'),
	('04294000', 'SP', 'São Paulo', 'Rua Abagiba', 25, 'Bloco A'),
	('04144110', 'SP', 'São Paulo', 'Rua Alcatrazes', 21, 'Bloco C'),
	('04294070', 'SP', 'São Paulo', 'Rua Barão da Casa Branca', 12, 'Bloco A'),
	('05662080', 'SP', 'Sao Paulo', 'Rua Breno Pinheiro', 53, 'Bloco D'),
	('06470180', 'SP', 'Barueri', 'Alameda Argentina', 230, 'Casa');

insert into tbUsuario values
	('99308116052', 'PF', 'Paulo Junior Oliveira', 'Armazenamento Alpha', 'Paulo_Junior@gmail.com', '10Paulojunior!', '2015-06-15 13:18:58', 6),
	('25972444000110', 'PJ', 'Maria da Silva', 'Armazenamento Alpha', 'Maria_Silva@gmail.com', '01Mariasilva#', '2018-03-01 13:18:58', 7),
	('49835300000180', 'PJ', 'Adolfo Silvestre Santos', 'Armazenamento Alpha', 'Adolfo_Silvestre@gmail.com', '99Adolfosilvestre%', '2018-08-20 13:18:58', 8),
	('98167975002', 'PF', 'Guilherme Fonseca', 'Armazenamento Alpha', 'Guilherme_Fonseca@outlook.com', '21Guilhermefonseca$', '2014-11-30 13:18:58', 9),
	('80647243000155', 'PJ', 'Alessandra de Moraes', 'Armazenamento Alpha', 'Alessandra_moraes@yahoo.com.br', '04Alessandramoraes*', '2018-03-14 13:18:58', 10);

insert into tbTelefone values
	(9163734489, 4),
	(945839421, 5),
	(917819876, 6),
	(973592663, 7),
	(948261337, 8);

insert into tbGalpao values
	(300, 30, 1, 8),
	(150, 15, 2, 6),
	(200, 20, 3, 4),
	(400, 40, 4, 5),
	(100, 10, 5, 7);

insert into tbSensor values
	('DHT11', 1),
	('TIl35', 1);

insert into tbDados values
	('2018/02/12 19:22:31', 20, 70, 1);

insert into tbProduto values
	('Alimentício', 'Banana', 26, 28, 70, 80, 1),
	('Alimentício', 'Maça', 18, 25, 70, 80, 2),
	('Alimentício', 'Picanha', -1, 8, 20, 50, 3),
	('Farmacêutico', 'Insulina Regular', 15, 30, 50, 55, 4),
	('Farmacêutico', 'Vacinas (fria ou refrigerada)', 2, 8, 40, 70, 5);

insert into tbAmbiente values
	(26, 28, 70, 80, 1),
	(18, 25, 70, 80, 2),
	(-1, 8, 20, 50, 3),
    (15, 30, 50, 55, 4),
	(2, 8, 40, 70, 5);

select * from tbEndereco;
select * from tbUsuario;
select * from tbTelefone;
select * from tbGalpao;
select * from tbSensor;
select * from tbDados;
select * from tbProduto;
select * from tbAmbiente;