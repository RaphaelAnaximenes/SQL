-- INFO: Este código pode ser colado diretamente no MS SQL SERVER MANAGEMENT STUDIO
CREATE DATABASE ReviveCarDB;


use ReviveCarDB;



CREATE TABLE tb_clientes(
-- regular information
code_cliente INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
razao_ou_nome_cliente VARCHAR(150) NOT NULL,
anotações_cliente VARCHAR(255),

-- personal data and documents
data_nascimento DATE NOT NULL,
CPF_ou_CNPJ_cliente BIGINT NOT NULL,
RG_cliente BIGINT NOT NULL,

-- Contact
telefone_fixo_cliente VARCHAR(10),
celular_cliente VARCHAR(11),

-- adress data
endereco_CEP_cliente VARCHAR(100) NOT NULL,
endereco_rua_numero_cliente VARCHAR(100) NOT NULL,
endereco_bairro_cliente VARCHAR(100),
endereco_cidade_cliente VARCHAR(100),
endereco_estado_cliente VARCHAR(100)
);



CREATE TABLE tb_fornecedores(
-- regular information
code_fornecedor INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
razao_social_fornecedor VARCHAR(150) NOT NULL,
nome_fantasia_fornecedor VARCHAR(150),
observacoes_fornecedor VARCHAR(255),

-- personal data and documents
CNPJ_fornecedor BIGINT NOT NULL,


-- Contact
telefone_fornecedor VARCHAR(10),
email_fornecedor VARCHAR(100),

-- adress data
endereco_CEP_fornecedor VARCHAR(100),
endereco_rua_numero_fornecedor VARCHAR(100),
endereco_bairro_fornecedor VARCHAR(100),
endereco_cidade_fornecedor VARCHAR(100),
endereco_estado_fornecedor VARCHAR(100)
);





CREATE TABLE tb_produtos(
-- system regular information
code_produto INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
nome_produto VARCHAR(150) NOT NULL,
fornecedor_produto VARCHAR(255),
descricao_produto VARCHAR(255),

-- item type data
categoria_produto VARCHAR(100),
celular_cliente VARCHAR(11),

-- system economics and sensible data
preco_venda_produto FLOAT NOT NULL,
preco_custo_produto FLOAT,
margem_lucro_produto FLOAT,

-- admnistration data
QTD_ESTOQUE_ATUAL_produto INT NOT NULL,
QTD_ESTOQUE_MAX_produto INT NOT NULL,
QTD_ESTOQUE_Min_produto INT NOT NULL,


-- adress data
endereco_CEP_cliente VARCHAR(100),
endereco_rua_numero_cliente VARCHAR(100),
endereco_bairro_cliente VARCHAR(100),
endereco_cidade_cliente VARCHAR(100),
endereco_estado_cliente VARCHAR(100)
);



CREATE TABLE tb_veiculos(
-- system regular information
code_veiculo INT IDENTITY(1,1) PRIMARY KEY NOT NULL,

-- item type data
tipo_veiculo VARCHAR(100) NOT NULL,
marca_veiculo VARCHAR(50),
modelo_veiculo VARCHAR(50),
cor_veiculo VARCHAR(50) NOT NULL,
ano_veiculo INT NOT NULL,

-- system sensible data
placa_veiculo VARCHAR(10) NOT NULL
);















CREATE TABLE tb_users(
-- sensible information
unique_user_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
login_user VARCHAR(20) NOT NULL,
psswd_user VARCHAR(20) NOT NULL,
psswd_user_confirmation VARCHAR(20),


-- personal data and documents
about_user VARCHAR(255),

-- Contact
telefone_fixo__user VARCHAR(10),
celular__user VARCHAR(11),

-- adress data
endereco_CEP_user VARCHAR(100) NOT NULL,
endereco_rua_numero_user VARCHAR(100) NOT NULL,
endereco_bairro_user VARCHAR(100),
endereco_cidade_user VARCHAR(100),
endereco_estado_user VARCHAR(100)
);

-- CONSTRAINT de CONSULTA
CREATE TABLE tb_consulta( 
cousulta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
FK_code_cliente INT FOREIGN KEY (FK_code_cliente) REFERENCES tb_clientes(code_cliente),
FK_code_fornecedor INT FOREIGN KEY (FK_code_fornecedor) REFERENCES tb_fornecedores(code_fornecedor),
FK_code_produto INT FOREIGN KEY (FK_code_produto) REFERENCES tb_produtos(code_produto),
FK_unique_user_id INT FOREIGN KEY (FK_unique_user_id) REFERENCES tb_users(unique_user_id),
FK_code_veiculo INT FOREIGN KEY (FK_code_veiculo) REFERENCES tb_veiculos(code_veiculo),
data_consulta DATE NOT NULL,
hora_consulta TIME NOT NULL
);


SELECT * FROM tb_consulta;
INSERT INTO tb_consulta VALUES (
1,
3,
1,
1,
1,
'25-04-2022', '10:00'

);











-- CLIENTES INSERT
SELECT * FROM DBO.tb_clientes;

INSERT INTO [dbo].[tb_clientes]
           ([razao_ou_nome_cliente]
           ,[anotações_cliente]
           ,[data_nascimento]
           ,[CPF_ou_CNPJ_cliente]
           ,[RG_cliente]
           ,[telefone_fixo_cliente]
           ,[celular_cliente]
           ,[endereco_CEP_cliente]
           ,[endereco_rua_numero_cliente]
           ,[endereco_bairro_cliente]
           ,[endereco_cidade_cliente]
           ,[endereco_estado_cliente])
     VALUES
           ('Romildo Morellato',
           'Bom Cliente, Assíduo',
		   '0001-01-01',
		   431555488,
           499991998,
           35999599,
           19995688522,
           '13.807-591',
           '558',
           'Jardim Morelatos',
           'Mogi Guaçu',
           'São Paulo');



 -- FORNECEDORES INSERT
SELECT * FROM DBO.tb_fornecedores;

INSERT INTO [dbo].[tb_fornecedores]
           ([razao_social_fornecedor]
           ,[nome_fantasia_fornecedor]
           ,[observacoes_fornecedor]
           ,[CNPJ_fornecedor]
           ,[telefone_fornecedor]
           ,[email_fornecedor]
           ,[endereco_CEP_fornecedor]
           ,[endereco_rua_numero_fornecedor]
           ,[endereco_bairro_fornecedor]
           ,[endereco_cidade_fornecedor]
           ,[endereco_estado_fornecedor])
     VALUES(
           'MORELATTO INFORMATICA SA',
           'MORELATTO COMPANY',
           'FORNECEDOR DE INTERNET',
           182211230001231,
           35495588,
           'MORELINF@GMAIL.COM',
           '13.344-666',
           '10',
           'Jardim Abolição',
           'São Paulo - Capital',
           'São Paulo');



 -- PRODUTOS INSERT
SELECT * FROM DBO.tb_produtos;

INSERT INTO [dbo].[tb_produtos]
           ([nome_produto]
           ,[fornecedor_produto]
           ,[descricao_produto]
           ,[categoria_produto]
           ,[celular_cliente]
           ,[preco_venda_produto]
           ,[preco_custo_produto]
           ,[margem_lucro_produto]
           ,[QTD_ESTOQUE_ATUAL_produto]
           ,[QTD_ESTOQUE_MAX_produto]
           ,[QTD_ESTOQUE_Min_produto]
           ,[endereco_CEP_cliente]
           ,[endereco_rua_numero_cliente]
           ,[endereco_bairro_cliente]
           ,[endereco_cidade_cliente]
           ,[endereco_estado_cliente])
     VALUES
           ('LIMPEX PLUS'
           ,'Limpex Cars'
           ,'Limpador a base de cloro não diluível'
           ,'Limpeza Geral'
           ,95552255
           ,50.5
           ,37.5
           ,25.0
           ,12
           ,50
           ,10
           ,'13.555-99'
           ,115
           ,'Salém do Pará'
           ,'Belém'
           ,'Pará');

























-- USERS INSERT
SELECT * FROM DBO.tb_users;

INSERT INTO [dbo].[tb_users]
           ([login_user]
           ,[psswd_user]
           ,[psswd_user_confirmation]
           ,[about_user]
           ,[telefone_fixo__user]
           ,[celular__user]
           ,[endereco_CEP_user]
           ,[endereco_rua_numero_user]
           ,[endereco_bairro_user]
           ,[endereco_cidade_user]
           ,[endereco_estado_user])
     VALUES
           ('usuarionelson'
           ,'nelsin123'
           ,'Data Aniversario'
           ,'USUARIO VIP, PLANO DUCHA MASTER'
           ,'35555222'
           ,'95529988'
           ,'13599-802'
           ,'10'
           ,'Galeão'
           ,'Itapopemba do Sul'
           ,'São Paulo');

  -- INSERT VEICULOS
SELECT * FROM DBO.tb_veiculos;

INSERT INTO [dbo].[tb_veiculos]
           ([tipo_veiculo]
           ,[marca_veiculo]
           ,[modelo_veiculo]
           ,[cor_veiculo]
           ,[ano_veiculo]
           ,[placa_veiculo])
     VALUES
           ('CARRO'
           ,'WOLKSVAGEN'
           ,'SEDAN'
           ,'AZUL TURQUESA'
           ,1995
           ,'152B155');

