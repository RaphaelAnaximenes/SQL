CREATE DATABASE aula2;
use aula2;

-- IDE: Microsoft SQL Server 2008

-- Destruindo Tables
DROP TABLE tb_<>;

-- Criando tables
CREATE TABLE tb_pacientes(
id_pct INT NOT NULL IDENTITY(1,1) PRIMARY KEY ,

cpf_pct VARCHAR(11) NOT NULL,

nome_pct VARCHAR(255) NOT NULL,

endereco_pct VARCHAR(100),

telefone_pct VARCHAR(10),

convenio_pct VARCHAR(100)
);

CREATE TABLE tb_medicos( 
id_medico INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
nome_med varchar(100) NOT NULL,
CRM_med int NOT NULL
);

CREATE TABLE tb_consulta( 
cousulta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
FK_ID_PCT INT,
FK_ID_MEDICO INT,
data_consulta DATE NOT NULL,
hora_consulta TIME NOT NULL,

CONSTRAINT FK_ID_PCT FOREIGN KEY (FK_ID_PCT) REFERENCES tb_pacientes(id_pct),
CONSTRAINT FK_ID_MEDICO FOREIGN KEY (FK_ID_MEDICO) REFERENCES tb_medicos(id_medico)
);



-->>>>> TB_CONSULTA ||
select * from tb_consulta;
INSERT INTO tb_consulta values (1, 1, '25-04-2022', '10:00');
-->>>>>		TB_MEDICO ||

-- INSERTS (USANDO: NOT NULL IDENTITY(1,1) PRIMARY KEY)
INSERT INTO tb_medicos(nome_med, CRM_med) values (
'Dr Robredo Presintino',
123321);

-- CUSTOM SELECTS
SELECT * from tb_medicos;
SELECT id_medico as Cadastro, nome_med as Profissional, CRM_med as CRM_do_Meliante FROM tb_medicos;

-->>>>>
-->>>>>		TB_PACIENTES ||

-- INSERT (USANDO: NOT NULL IDENTITY(1,1) PRIMARY KEY)
INSERT INTO tb_pacientes(nome_pct, endereco_pct, telefone_pct, convenio_pct) values (
00010047851,
'Severino Retirante',
'Serra das Costelas, 3 - Sertão',
956677681,
'Hidratação Master'
);

-- CUSTOM SELECTS
select * from tb_pacientes;
select cpf_pct AS CPF, nome_pct as Cliente, endereco_pct as Endereço, telefone_pct as Telefone, convenio_pct as Plano FROM tb_pacientes;




