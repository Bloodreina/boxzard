insert into tbUsuario (nomeCompleto, cpf_cnpj, cep, numero, complemento) values
('Alex Celestino',   45662809852, 04880-272, 686, 'local 2'),
('Amanda Aparecida', 98158914802, 19960970, 210, 'local 3'),
('Gustavo Caires',   90924574852, 19960970, 507, 'local 4'),
('João Pedro',       33709259827, 19960970, 752, 'local 5'),
('Lais da Silva',    11753546869, 19960970, 978, 'local 6'),
('BoxZard',          42233370848, 19960970, 675, 'Empresa'),
('Alex Buarque',   47586727848, 08140-060, 1030, 'Casa 1');

insert into tbTelefone (telefone) values 
(14987618754),(1427122738),
(1427644822),(14995003463),
(1439575912),(14994299943),
(1128623996),(11986123488),
(1139231574),(11996693852),
(1137693055),
(1138181288);

select * from tbLogin;

insert into tbLogin (email, senha) values 
('alexbuarque@gmail.com','x6yr2qZu5W'),
('alexcelestino@outloock.com.br','a3Xrke8w01'),
('amandaaparecida@otmail.com','a3Xrke8w01'),
('gustavocaires@gmail.com','DYGHZgKoDH'),
('joaopedro@hotmail.com','rChWBfBkdU'),
('boxzardcontato@zardtec.com','qBHtHcqhCc'),
('laissilva@gmail.com','5O4aUmoppr');

update tbUsuario set fkEmail = 1 where codUsuario = 1 ;
update tbUsuario set fkEmail = 2 where codUsuario = 2 ;
update tbUsuario set fkEmail = 3 where codUsuario = 3 ;
update tbUsuario set fkEmail = 4 where codUsuario = 4 ;
update tbUsuario set fkEmail = 5 where codUsuario = 5 ;
update tbUsuario set fkEmail = 7 where codUsuario = 7 ;
update tbUsuario set fkEmail = 6 where codUsuario = 7 ;

update tbTelefone set fkUsuario = 1 where codTelefone = 1;
update tbTelefone set fkUsuario = 2 where codTelefone = 2;
update tbTelefone set fkUsuario = 1 where codTelefone = 3;
update tbTelefone set fkUsuario = 3 where codTelefone = 4;
update tbTelefone set fkUsuario = 4 where codTelefone = 6;
update tbTelefone set fkUsuario = 4 where codTelefone = 5;
update tbTelefone set fkUsuario = 5 where codTelefone = 7;
update tbTelefone set fkUsuario = 5 where codTelefone = 8;
update tbTelefone set fkUsuario = 6 where codTelefone = 9;
update tbTelefone set fkUsuario = 6 where codTelefone = 10;
update tbTelefone set fkUsuario = 7 where codTelefone = 11;
update tbTelefone set fkUsuario = 7 where codTelefone = 12;

insert into tbDadosCapturados values
(25,74,1,NULL),
(20,72,1,NULL),
(06,34,1,NULL),
(23,52,1,NULL),
(20,47,1,NULL);

select * from tbSensor;

SELECT * from tbAmbienteIdeal;

insert into tbSensor values
    ('DHT11', 6)
;

SELECT * FROM tbLogin INNER JOIN tbUsuario ON tbLogin.codemail = tbUsuario.codusuario where tbUsuario.codusuario = 7;