select * from tbLogin;
select * from tbEndereco;
select * from tbTelefone;
select * from tbUsuario;
select * from tbGalpao;
select * from tbSensor;
select * from tbDadosCapturados;
select * from tbAmbienteIdeal;
select * from tbAmbienteGenerico;
select * from tbProduto;
select * from tbMetricas;

select g.*, u.nomeCompleto, u.cpf_cnpj from tbGalpao as g, tbUsuario as u where g.fkUsuario = u.codUsuario and u.codUsuario = 4;

select top 20 * from tbDadosCapturados as dc, tbSensor as s where dc.fkSensor = s.codSensor and s.fkGalpao = 2;

select p.* from tbProduto as p, tbAmbienteIdeal as ai where p.fkAmbienteIdeal = ai.codAmbiente;