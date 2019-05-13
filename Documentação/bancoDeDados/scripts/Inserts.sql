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
	('06470180', 'SP', 'Barueri', 'Alameda Argentina', '230', 'Casa');

insert into tbUsuario values
	('99308116052', 'Paulo Junior Oliveira', 'Paulo_Junior@gmail.com', '10Paulojunior!', '15/06/2015', 6),
	('25972444000110', 'Maria da Silva', 'Maria_Silva@gmail.com', '01Mariasilva#', '01/03/2018', 7),
	('49835300000180', 'Adolfo Silvestre Santos', 'Adolfo_Silvestre@gmail.com', '99Adolfosilvestre%', '20/08/2018', 8),
	('98167975002', 'Guilherme Fonseca', 'Guilherme_Fonseca@outlook.com', '21Guilhermefonseca$', '30/11/2014', 9),
	('80647243000155', Alessandra de Moraes', 'Alessandra_moraes@yahoo.com.br', '04Alessandramoraes*', '14/03/2018', 10);

insert into tbTelefone values
	(9163734489, 1),
	(945839421, 2),
	(917819876, 3),
	(973592663, 4),
	(948261337, 5);

insert into tbGalpao values
	(300, 30, 1),
	(150, 15, 2),
	(200, 20, 3),
	(400, 40, 4),
	(100, 10, 5);

insert into tbSensor values
	('DHT11', 1),
	(TIl35', 1);

insert into tbDados values
	(2018/02/12, 20, 70, 1);

insert into tbProduto values
	('Alimentício', 'Banana', 28, 26, 80, 70, 1),
	('Alimentício', 'Maça', 25, 18, 80, 70, 2),
	('Alimentício', 'Picanha', 8, -1, 50, 20, 3),
	('Farmacêutico', 'Insulina Regular', 30, 15, 55, 50, 4),
	('Farmacêutico', 'Vacinas (fria ou refrigerada), 8, 2, 70, 40, 5);

insert into tbAmbiente values
	(28, 26, 80, 70, 1),
	(25, 18, 80, 70, 2),
	(8, -1, 50, 20, 3),
    	(30, 15, 55, 50, 4),
	(7, 3, 70, 40, 5);