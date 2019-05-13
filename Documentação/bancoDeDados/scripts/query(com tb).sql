create table tbEndereco(
	codEndereco int primary key identity,
	cep varchar(9),
	estado varchar(30),
	cidade varchar(30),
	logradouro varchar(30),
	numero int,
	complemento varchar(30)
);

create table tbUsuario(
	codUsuario int primary key identity,
	cpf_cnpjUsuario varchar(11),
	nomeUsuario varchar(45),
	emailUsuario varchar(45),
	senhaUsuario varchar(256),
	dataAquisicao datetime,
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
	foreign key (fkEndereco) references tbEndereco(codEndereco)
);

create table tbSensor(
	codSensor int primary key identity,
	tipoSensor varchar(6),
	fkGalpao int,
	foreign key (fkGalpao) references tbGalpao(codGalpao)
);

create table tbDados(
	codDados int primary key identity,
	dataCapturada datetime ,
	tempCapturada float,
	umidCapturada float,
	fkSensor int,
	foreign key (fkSensor) references tbSensor(codSensor)
);

create table tbProduto(
	codProduto int primary key identity,
	tipoProduto varchar(30),
	nomeProduto varchar(40),
	tempMax float,
	umidMax float,
	tempMIn float,
	umidMin float,
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
