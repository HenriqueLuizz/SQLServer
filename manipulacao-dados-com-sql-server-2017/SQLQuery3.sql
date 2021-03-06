USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[CLIENTES]
           ([CPF],[NOME],[ENDERE�O],[BAIRRO],[CIDADE],[ESTADO],[CEP],[DATA NASCIMENTO],[IDADE],[SEXO]
		   ,[LIMITE DE CR�DITO],[VOLUME DE COMPRA],[PRIMEIRA COMPRA])
     VALUES
           ('1471156710','�rica Carvalho','R. Iriquitia','Jardins','S�o Paulo','SP','80012212','1990-09-01',
           27,'F',170000,24500,0),
		   ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','�gua Santa','Rio de Janeiro','RJ','22000000',
		   '2000-02-12',18,'M',100000,20000,1),
		   ('2600586709','C�sar Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ','22020001',
		   '2000-03-12',18,'M',120000,22000,0)
GO

INSERT INTO CLIENTES ([CPF],[NOME],[ENDERE�O],[BAIRRO],
    [CIDADE],[ESTADO],[CEP],[DATA NASCIMENTO],[IDADE],
    [SEXO],[LIMITE DE CR�DITO],[VOLUME DE COMPRA],[PRIMEIRA COMPRA])
SELECT [CPF],[NOME],[ENDERECO 1] AS ENDERE�O,[BAIRRO],[CIDADE],[ESTADO],
    [CEP],[DATA DE NASCIMENTO],[IDADE],[SEXO],[LIMITE DE CREDITO],
    [VOLUME DE COMPRA],[PRIMEIRA COMPRA]
FROM [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES] 
    WHERE [CPF] NOT IN ('1471156710','19290992743','2600586709')


INSERT INTO [dbo].[CLIENTES]
           ([CPF],[NOME],[ENDERE�O],[BAIRRO],[CIDADE],[ESTADO],[CEP],[DATA NASCIMENTO],[IDADE],[SEXO]
		   ,[LIMITE DE CR�DITO],[VOLUME DE COMPRA],[PRIMEIRA COMPRA])
     VALUES
           ('9999999999','Matheus Jesus','R. Nova 23','Jardins','S�o Paulo','SP','80012212','1993-07-13',
           24,'M',12000,30000,0)


UPDATE [dbo].[CLIENTES] SET 
    [ENDERE�O] = 'R. Jorge Emilio 23',
    [BAIRRO] = 'Santo Amaro',
    [CIDADE] = 'S�o Paulo',
    [ESTADO] = 'SP',
    [CEP] = '8833223'
WHERE [CPF] = '19290992743'

SELECT * FROM [CLIENTES] 
WHERE [ESTADO] = 'RJ'

UPDATE [dbo].[CLIENTES]
    SET [VOLUME DE COMPRA] = [VOLUME DE COMPRA] * 1.2
WHERE [ESTADO] = 'RJ'

SELECT * FROM [CLIENTES] 
WHERE [ESTADO] = 'RJ'