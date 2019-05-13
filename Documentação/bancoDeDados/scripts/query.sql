create table tbEndereco(
codEndereco int primary key,
cep varchar(9),
estado varchar(30),
cidade varchar(30),
logradouro varchar(30),
numero int,
complemento varchar(30)
);

create table tbUsuario(
codUsuario int primary key,
cpf_cnpjUsuario varchar(11),
nomeUsuario varchar(45),
emailUsuario varchar(45),
senhaUsuario varchar(256),
dataAquisicao datetime,
fkEndereco int,
foreign key (fkEndereco) references tbEndereco(codEndereco)
);

create table tbTelefone(
codTelefone int primary key,
numTelefone varchar(15),
fkUsuario int,
foreign key (fkUsuario) references tbUsuario(codUsuario)
);

create table tbGalpao (
codGalpao int primary key, 
tamanhoGalpao float,
qtdArCond int,
fkEndereco int,
foreign key (fkEndereco) references tbEndereco(codEndereco)
);

create table tbSensor(
codSensor int primary key ,
tipoSensor varchar(6),
fkGalpao int,
foreign key (fkGalpao) references tbGalpao(codGalpao)
);

create table tbDados(
codDados int primary key,
dataCapturada datetime ,
tempCapturada float,
umidCapturada float,
fkSensor int,
foreign key (fkSensor) references tbSensor(codSensor)
);

create table tbProduto(
codProduto int primary key,
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
codAmbiente int primary key,
tempMaxGenerico float,
umidMaxGenerico float,
tempMinGenerico float,
umidMinGenerico float,
fKProduto int,
foreign key (fkProduto) references tbProduto(codProduto)
);
