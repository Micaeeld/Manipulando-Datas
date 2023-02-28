select 
JSON_UNQUOTE(JSON_EXTRACT(JSON, "$.Primeiro_Nome")) as P_NOME, 
JSON_UNQUOTE(JSON_EXTRACT(JSON, "$.Data_Nascimento")) as Data_Nascimento,
JSON_EXTRACT(JSON, "$.Salario") as Salario from tb_object_funcionario;

select 
JSON_TYPE(JSON_EXTRACT(JSON, "$.Primeiro_Nome")) as P_NOME, 
JSON_TYPE(JSON_EXTRACT(JSON, "$.Data_Nascimento")) as Data_Nascimento,
JSON_TYPE(JSON_EXTRACT(JSON, "$.Salario")) as Salario from tb_object_funcionario;

select 
JSON_UNQUOTE(JSON_EXTRACT(JSON, "$.Primeiro_Nome")) as P_NOME, 
JSON_UNQUOTE(JSON_EXTRACT(JSON, "$.Data_Nascimento")) as Data_Nascimento,
JSON_EXTRACT(JSON, "$.Salario") as Salario from tb_object_funcionario
where year(JSON_EXTRACT(JSON, "$.Data_Nascimento")) <= 1980;