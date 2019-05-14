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
	(9163734489, 1),
	(945839421, 2),
	(917819876, 3),
	(973592663, 4),
	(948261337, 5);

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