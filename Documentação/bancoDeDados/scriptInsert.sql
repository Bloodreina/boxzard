
	-- Insert da tabela login
	insert into login (email, senha) values 
		('alexbuarque@gmail.com', 'x6yr2qZu5W'),
		('alexcelestino@outloock.com.br', 'a3Xrke8w01'),
		('amandaaparecida@otmail.com', 'a3Xrke8w01'),
		('gustavocaires@gmail.com', 'DYGHZgKoDH'),
		('joaopedro@hotmail.com', 'rChWBfBkdU'),
		('boxzardcontato@zardtec.com', 'qBHtHcqhCc'),
		('laissilva@gmail.com', '5O4aUmoppr')
	;

	-- Insert da tabela de endereços
	insert into endereco values
		('04880272', '686', 'local 2'),
		('19960970', '210', 'local 3'),
		('19960970', '507', 'local 4'),
		('19960970', '752', 'local 5'),
		('19960970', '978', 'local 6'),
		('19960970', '675', 'Empresa'),
		('08140060', '1030', 'Casa 1'),
		('25478987', '888', 'Lado B Leste'),
		('25478987', '888', 'Lado B Oeste'),
		('78456212', '12', 'Galpão 1'),
		('14587898', '1', 'Galpão 1'),
		('14587898', '1', 'Galpão 2'),
		('14587898', '1', 'Galpão 3')
	;
	-- Insert da tabela Usuário
	insert into usuario values
	    ('45662809852', 'Alex Celestino', 2, 1),
	    ('98158914802', 'Amanda Aparecida', 3, 2),
	    ('90924574852', 'Gustavo Caires', 4, 3),
	    ('33709259827', 'João Pedro', 5, 4),
	    ('33709259827', 'Lais da Silva', 7, 5),
	    ('42233370848', 'BoxZard', 6, 6),
	    ('47586727848', 'Alex Buarque', 1, 7)
	;

	-- Insert da tabela telefone
	insert into telefone values 
		(14987618754, 1),
		(1427122738, 5),
		(1427644822, 4),
		(14995003463, 7),
		(1439575912, 7),
		(14994299943, 2),
		(1128623996, 3),
		(11986123488, 3),
		(1139231574, 7),
		(11996693852, 6),
		(1137693055, 1),
		(1138181288, 6)
	;

	-- Insert da tabela galpão
	insert into galpao values
    	(250, 4, 8, 7),
    	(200, 4, 9, 2),
    	(300, 6, 10, 5),
    	(270, 5, 11, 1),
    	(360, 7, 12, 4),
    	(360, 8, 13, 3)
	;

	-- Insert da tabela Sensor
	insert into sensor values
	    ('DHT11', 1),
	    ('DHT11', 2),
	    ('DHT11', 3),
	    ('DHT11', 4),
	    ('DHT11', 5),
	    ('DHT11', 6)
	;

	-- Insert da tabela Ambiente ideal
	 insert into ambienteIdeal values
        (22, 31, 70, 80),
        (18, 25, 70, 80),
        (-1, 8, 20, 50),
        (30, 15, 50, 55),
        (2, 8, 40, 70)
   	;

	-- Insert da tabela produto
	insert into produto values
        ('Banana', 'Alimenticio', 1, 2),
        ('Maça', 'Alimenticio', 2, 6),
        ('Picanha', 'Alimenticio', 3, 1),
        ('Insulina_regular', 'Fármaco', 4, 4),
        ('Vacinas', 'Fármaco', 5, 3)
    ;

    -- Insert da tabela dados capturados
    insert into tbDadosCapturados values
	    (25, 74, getdate(), 1),
	    (20, 72, getdate(), 2),
	    (06, 34, getdate(), 3),
	    (23, 52, getdate(), 4),
	    (20, 47, getdate(), 5)
	;

	-- Insert na tabela métrica
	insert into metricas values
		(24, 26, 26, 28, 1, 1),
		(28, 41, 32, 34, 2, 3),
		(2, 6, 3, 3, 2, 1)
	;





