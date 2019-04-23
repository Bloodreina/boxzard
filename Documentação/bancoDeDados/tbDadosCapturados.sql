ALTER TABLE tbDadosCapturados
DROP COLUMN dataCapturada;
ALTER TABLE tbDadosCapturados
ADD dataCapturada smalldatetime default CURRENT_TIMESTAMP;

desc tbDadosCapturados;

insert into tbDadosCapturados values
(25,74,1,NULL),
(20,72,1,NULL),
(06,34,1,NULL),
(23,52,1,NULL),
(20,47,1,NULL);


SELECT * from tbAmbienteIdeal