-- 1) Criando tabelas temporarias em relacao a biblioteca do banco de dados original (traduzida)

-- 1.1) Criando a tabela sobre a Categoria Principal
DROP TABLE IF EXISTS ##Bibli_Categ_Prin;

CREATE TABLE ##Bibli_Categ_Prin (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Categoria Principal] VARCHAR(6) NOT NULL
	constraint PK_CATEG_PRIN primary key (Codigo)
);

INSERT INTO ##Bibli_Categ_Prin VALUES('cal�a');
INSERT INTO ##Bibli_Categ_Prin VALUES('saias');
INSERT INTO ##Bibli_Categ_Prin VALUES('blusas');
INSERT INTO ##Bibli_Categ_Prin VALUES('oferta');

SELECT * FROM ##Bibli_Categ_Prin;
GO

-- 1.2) Criando a tabela sobre a Cor
DROP TABLE IF EXISTS ##Bibli_Cor;

CREATE TABLE ##Bibli_Cor (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Cor] VARCHAR(12) NOT NULL,
	[Tom] VARCHAR(12) NOT NULL 
	constraint PK_COR primary key (Codigo)
);

INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('bege', 'neutra');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('preto', 'neutra');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('azul', 'fria');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('marron', 'quente');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('bord�', 'quente');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('cinza', 'neutra');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('verde', 'fria');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('azul-marinho', 'fria');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('muitas cores', 'indefinido');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('verde-oliva', 'fria');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('rosa', 'quente');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('vermelho', 'quente');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('violeta', 'fria');
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('branco', 'neutra');

SELECT * FROM ##Bibli_Cor;
GO

-- 1.3) Criando a tabela sobre a Localizacao
DROP TABLE IF EXISTS ##Bibli_Local;

CREATE TABLE ##Bibli_Local (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Localiza��o] VARCHAR(19) NOT NULL
	constraint PK_Local primary key (Codigo)
);

INSERT INTO ##Bibli_Local VALUES('superior � esquerda');
INSERT INTO ##Bibli_Local VALUES('superior central');
INSERT INTO ##Bibli_Local VALUES('superior � direita');
INSERT INTO ##Bibli_Local VALUES('inferior � esquerda');
INSERT INTO ##Bibli_Local VALUES('inferior central');
INSERT INTO ##Bibli_Local VALUES('inferior � direita');

SELECT * FROM ##Bibli_Local;
GO

-- 1.4) Criando a tabela sobre a Modelo
DROP TABLE IF EXISTS ##Bibli_Modelo;

CREATE TABLE ##Bibli_Modelo (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Fotografia do Modelo] VARCHAR(20) NOT NULL
	constraint PK_Modelo primary key (Codigo)
);

INSERT INTO ##Bibli_Modelo VALUES('face');
INSERT INTO ##Bibli_Modelo VALUES('perfil');

SELECT * FROM ##Bibli_Modelo;

-- 1.5) Criando a tabela sobre a Paises
DROP TABLE IF EXISTS ##Bibli_Pais;
CREATE TABLE ##Bibli_Pais (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Pa�s] VARCHAR(24) NOT NULL,
	[Continente] VARCHAR(24) NOT NULL,
	constraint PK_Pais primary key (Codigo)
);

INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Austr�lia', 'Oceania');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('�ustria', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('B�lgica', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Ilhas Virgens Brit�nicas', 'Am�rica');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Ilhas Cayman', 'Am�rica');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Ilha Christmas', '�sia');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Cro�cia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Chipre', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Rep�blica Tcheca', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Dinamarca', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Est�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Indefinido', 'Indefinido');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Ilhas Faro�', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Finl�ndia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Fran�a', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Alemanha', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Gr�cia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Hungria', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Isl�ndia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('�ndia', '�sia');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Irlanda', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('It�lia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Let�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Litu�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Luxemburgo', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('M�xico', 'Am�rica');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Holanda', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Noruega', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Pol�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Portugal', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Rom�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('R�ssia', '�sia/Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('San Marino', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Eslov�quia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Eslov�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Espanha', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Su�cia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Su��a', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Ucr�nia', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Emirados �rabes Unidos', '�sia');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('Reino Unido', 'Europa');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('USA', 'Am�rica');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('.biz', 'indefinido');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('.com', 'indefinido');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('.int', 'indefinido');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('.net', 'indefinido');
INSERT INTO ##Bibli_Pais ([Pa�s], [Continente]) VALUES('.org', 'indefinido');

SELECT * FROM ##Bibli_Pais;
GO

-- 1.6)	Criando a tabela sobre a Preco 2			
DROP TABLE IF EXISTS ##Bibli_Preco2;

CREATE TABLE ##Bibli_Preco2 (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Pre�o 2] VARCHAR(10) NOT NULL
	constraint PK_Preco2 primary key (Codigo)
);

INSERT INTO ##Bibli_Preco2 VALUES('acima');
INSERT INTO ##Bibli_Preco2 VALUES('m�dia');

SELECT * FROM ##Bibli_Preco2;
GO

-- 1.7) Criando a tabela sobre a Faixa_preco
DROP TABLE IF EXISTS ##Determinar_Faixa;

SELECT MIN([Pre�o (US)]) AS Minimo, CAST(MAX([Pre�o (US)])*0.33 AS INT) AS [0.33%],
	   AVG([Pre�o (US)]) AS Media, CAST(MAX([Pre�o (US)])*0.67 AS INT) AS [0.67%],
	   MAX([Pre�o (US)]) AS Maximo
INTO ##Determinar_Faixa
FROM [Sistema].[dbo].[e-shop];
GO

-- 2) Modificando o banco original 

-- 2.1) Modificando a classifi��o das variaveis
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Ano varchar(4) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [M�s] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Dia varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Clique varchar(3) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Pa�s] varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [ID Sess�o] varchar(10) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Categoria Principal] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Modelo de Roupa] varchar(4) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Cor varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Localiza��o] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Fotografia do Modelo] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Pre�o (US)] int not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Pre�o 2] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [P�gina] varchar(1) not null;
GO

-- 3) Novas tabelas que serao exploradas 

-- 3.1) Tabela 'Shop_Loja': Copiada da tabela 'e-shop' com as obervacoes convertida da Biblioteca
DROP TABLE IF EXISTS [Sistema].[dbo].[Shop_Loja];
WITH Shop_Loja ([ID Sess�o], [Clique], [M�s], [Dia], [Pa�s], [Continente], [Categoria Principal], 
		        [Modelo de Roupa], [Cor], [Tom], [Localiza��o], [Fotografia do Modelo], 
		        [Pre�o (US)], [Faixa de Pre�o], [Pre�o 2], [P�gina])
AS
(
	SELECT
		A.[ID Sess�o], 
		Clique,
		DATENAME(MM, (CONVERT(DATE, CONCAT(Dia,'/',[M�s],'/',Ano), 103))) AS [M�s],
		Dia,
		F.[Pa�s], 
		F.[Continente],
		C.[Categoria Principal],
		A.[Modelo de Roupa], 
		B.Cor,
		B.Tom,
		E.[Localiza��o],
		D.[Fotografia do Modelo],
		A.[Pre�o (US)],
		CASE 
			WHEN A.[Pre�o (US)] < 36 THEN 'menos de US$ 36'
			WHEN A.[Pre�o (US)] >= 36 AND A.[Pre�o (US)] < 41 THEN 'entre US$ 36 e US$ 41'
			WHEN A.[Pre�o (US)] >=  41 THEN 'maior de US$ 41'
		END AS [Faixa de Pre�o],
		G.[Pre�o 2],
		[P�gina]
	FROM 
		[Sistema].[dbo].[e-shop] as A
	INNER JOIN ##Bibli_Cor as B
		on A.Cor = B.Codigo
	INNER JOIN ##Bibli_Categ_Prin as C
		on A.[Categoria Principal] = C.Codigo
	INNER JOIN ##Bibli_Modelo as D
		on A.[Fotografia do Modelo] = D.Codigo
	INNER JOIN ##Bibli_Local as E
		on A.[Localiza��o] = E.Codigo
	INNER JOIN ##Bibli_Pais as F
		on A.[Pa�s] = F.Codigo
	INNER JOIN ##Bibli_Preco2 as G
		on A.[Pre�o 2] = G.Codigo
	CROSS JOIN 
		##Determinar_Faixa AS H
),
[Removendo_Paises]
AS (
	SELECT * FROM Shop_Loja
	WHERE [Pa�s] NOT IN ('.biz', '.com', '.int', '.net', '.org', 'Indefinido')
),
[Mes_Pt]
AS(
	SELECT
	[ID Sess�o], [Clique], 
	CASE 
		WHEN [M�s] = 'April' THEN 'Abril'
		WHEN [M�s] = 'August' THEN 'Agosto'
		WHEN [M�s] = 'July' THEN 'Julho'
		WHEN [M�s] = 'June' THEN 'Junho'
		WHEN [M�s] = 'May' THEN 'Maio'
		ELSE [M�s]
	END AS [M�s], 
	[Dia], [Pa�s], [Continente], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom], [Localiza��o], 
	[Fotografia do Modelo], [Pre�o (US)], [Faixa de Pre�o], [Pre�o 2], [P�gina]
	FROM [Removendo_Paises]
)
SELECT *
INTO [Sistema].[dbo].[Shop_Loja]
FROM Mes_Pt 
GO 

-- Verificar ao longo dos dias a constancia de clicks

UPDATE [Sistema].[dbo].[Shop_Loja]
SET [Modelo de Roupa] = 'A18c'
WHERE [Categoria Principal] = 'cal�a' AND [Modelo de Roupa] = 'A18';


-- 3.2) Tabela Shop_Loja simplificado
SELECT [Continente], [Categoria Principal], 
	   [Tom], [Localiza��o], [Fotografia do Modelo], 
	   [Faixa de Pre�o], [Pre�o 2], [P�gina], COUNT(*) AS [Total de Cliques]
FROM [Sistema].[dbo].[Shop_Loja]
GROUP BY [Continente], [Categoria Principal], 
	   [Tom], [Localiza��o], [Fotografia do Modelo], 
	   [Faixa de Pre�o], [Pre�o 2], [P�gina]
ORDER BY COUNT(*) DESC

-- 3.3) Tabela Shop_Loja Completa
SELECT [ID Sess�o], [Clique], [Continente], [Categoria Principal], 
	   [Tom], [Localiza��o], [Fotografia do Modelo], 
	   [Faixa de Pre�o], [Pre�o 2], [P�gina]
FROM [Sistema].[dbo].[Shop_Loja]
ORDER BY [ID Sess�o]

-- 3.4) Tabela Shop_Loja Original
SELECT [ID Sess�o], [Clique], [Pa�s], [Categoria Principal], 
	   [Cor], [Localiza��o], [Fotografia do Modelo], 
	   [Pre�o (US)], [Pre�o 2], [P�gina]
FROM [Sistema].[dbo].[Shop_Loja]
ORDER BY [ID Sess�o]

SELECT * FROM [Sistema].[dbo].[Shop_Loja]

--------------------------------------

SELECT * FROM Shop_Loja

SELECT [ID Sess�o], [Pa�s], [Categoria Principal], [Cor], [Localiza��o], 
	   [Fotografia do Modelo], [Faixa de Pre�o], [Pre�o 2], [P�gina]
FROM [Sistema].[dbo].[Shop_Loja]

SELECT * FROM Shop_Loja


GO

-- 3.2) Tabela 'Produto': Informacao sobre os produtos

WITH Produto ([Modelo de Roupa], [Categoria Principal], [Cor], [Fotografia do Modelo])
AS
(
	SELECT 
		[Modelo de Roupa],
		[Categoria Principal],
		[Cor],
		[Fotografia do Modelo]
	FROM
		[Sistema].[dbo].[Shop_Loja]
)
SELECT DISTINCT 
	* 
INTO 
	[Sistema].[dbo].[Loja_Produto] 
FROM 
	Produto
ORDER BY 
	[Modelo de Roupa] ASC;

SELECT * FROM Loja_Produto ORDER BY [Modelo de Roupa],[Fotografia do Modelo] ASC 

-- Adicionando chave primaria em 'Modelo de Roupa'
ALTER TABLE [Sistema].[dbo].[Loja_Produto] ADD CONSTRAINT PK_Modelo_Roupa PRIMARY KEY ([Modelo de Roupa])
GO

-- 3.2) Tabela 'Navegacao': registro da navegacao do usuario pelo site

SELECT 
	[ID Sess�o],
	[Modelo de Roupa],
	Clique, 
	[Localiza��o], 
	[P�gina] 
INTO 
	[Sistema].[dbo].[Loja_Navegacao] 
FROM 
	[Sistema].[dbo].[Shop_Loja];
GO
