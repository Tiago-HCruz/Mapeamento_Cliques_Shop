-- 1) Criando tabelas temporarias em relacao a biblioteca do banco de dados original (traduzida)

-- 1.1) Criando a tabela sobre a Categoria Principal
DROP TABLE IF EXISTS ##Bibli_Categ_Prin;

CREATE TABLE ##Bibli_Categ_Prin (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Categoria Principal] VARCHAR(6) NOT NULL
	constraint PK_CATEG_PRIN primary key (Codigo)
);

INSERT INTO ##Bibli_Categ_Prin VALUES('calça');
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
INSERT INTO ##Bibli_Cor (Cor, Tom) VALUES('bordô', 'quente');
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
	[Localização] VARCHAR(19) NOT NULL
	constraint PK_Local primary key (Codigo)
);

INSERT INTO ##Bibli_Local VALUES('superior à esquerda');
INSERT INTO ##Bibli_Local VALUES('superior central');
INSERT INTO ##Bibli_Local VALUES('superior à direita');
INSERT INTO ##Bibli_Local VALUES('inferior à esquerda');
INSERT INTO ##Bibli_Local VALUES('inferior central');
INSERT INTO ##Bibli_Local VALUES('inferior à direita');

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
	[País] VARCHAR(24) NOT NULL,
	[Continente] VARCHAR(24) NOT NULL,
	constraint PK_Pais primary key (Codigo)
);

INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Austrália', 'Oceania');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Áustria', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Bélgica', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Ilhas Virgens Britânicas', 'América');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Ilhas Cayman', 'América');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Ilha Christmas', 'Ásia');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Croácia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Chipre', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('República Tcheca', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Dinamarca', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Estônia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Indefinido', 'Indefinido');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Ilhas Faroé', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Finlândia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('França', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Alemanha', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Grécia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Hungria', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Islândia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Índia', 'Ásia');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Irlanda', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Itália', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Letônia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Lituânia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Luxemburgo', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('México', 'América');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Holanda', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Noruega', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Polônia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Portugal', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Romênia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Rússia', 'Ásia/Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('San Marino', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Eslováquia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Eslovênia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Espanha', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Suécia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Suíça', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Ucrânia', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Emirados Árabes Unidos', 'Ásia');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('Reino Unido', 'Europa');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('USA', 'América');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('.biz', 'indefinido');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('.com', 'indefinido');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('.int', 'indefinido');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('.net', 'indefinido');
INSERT INTO ##Bibli_Pais ([País], [Continente]) VALUES('.org', 'indefinido');

SELECT * FROM ##Bibli_Pais;
GO

-- 1.6)	Criando a tabela sobre a Preco 2			
DROP TABLE IF EXISTS ##Bibli_Preco2;

CREATE TABLE ##Bibli_Preco2 (
	[Codigo] INT IDENTITY(1, 1) NOT NULL,	
	[Preço 2] VARCHAR(10) NOT NULL
	constraint PK_Preco2 primary key (Codigo)
);

INSERT INTO ##Bibli_Preco2 VALUES('acima');
INSERT INTO ##Bibli_Preco2 VALUES('média');

SELECT * FROM ##Bibli_Preco2;
GO

-- 1.7) Criando a tabela sobre a Faixa_preco
DROP TABLE IF EXISTS ##Determinar_Faixa;

SELECT MIN([Preço (US)]) AS Minimo, CAST(MAX([Preço (US)])*0.33 AS INT) AS [0.33%],
	   AVG([Preço (US)]) AS Media, CAST(MAX([Preço (US)])*0.67 AS INT) AS [0.67%],
	   MAX([Preço (US)]) AS Maximo
INTO ##Determinar_Faixa
FROM [Sistema].[dbo].[e-shop];
GO

-- 2) Modificando o banco original 

-- 2.1) Modificando a classifição das variaveis
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Ano varchar(4) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Mês] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Dia varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Clique varchar(3) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [País] varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [ID Sessão] varchar(10) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Categoria Principal] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Modelo de Roupa] varchar(4) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN Cor varchar(2) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Localização] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Fotografia do Modelo] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Preço (US)] int not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Preço 2] varchar(1) not null;
ALTER TABLE [Sistema].[dbo].[e-shop] ALTER COLUMN [Página] varchar(1) not null;
GO

-- 3) Novas tabelas que serao exploradas 

-- 3.1) Tabela 'Shop_Loja': Copiada da tabela 'e-shop' com as obervacoes convertida da Biblioteca
DROP TABLE IF EXISTS [Sistema].[dbo].[Shop_Loja];
WITH Shop_Loja ([ID Sessão], [Clique], [Mês], [Dia], [País], [Continente], [Categoria Principal], 
		        [Modelo de Roupa], [Cor], [Tom], [Localização], [Fotografia do Modelo], 
		        [Preço (US)], [Faixa de Preço], [Preço 2], [Página])
AS
(
	SELECT
		A.[ID Sessão], 
		Clique,
		DATENAME(MM, (CONVERT(DATE, CONCAT(Dia,'/',[Mês],'/',Ano), 103))) AS [Mês],
		Dia,
		F.[País], 
		F.[Continente],
		C.[Categoria Principal],
		A.[Modelo de Roupa], 
		B.Cor,
		B.Tom,
		E.[Localização],
		D.[Fotografia do Modelo],
		A.[Preço (US)],
		CASE 
			WHEN A.[Preço (US)] < 36 THEN 'menos de US$ 36'
			WHEN A.[Preço (US)] >= 36 AND A.[Preço (US)] < 41 THEN 'entre US$ 36 e US$ 41'
			WHEN A.[Preço (US)] >=  41 THEN 'maior de US$ 41'
		END AS [Faixa de Preço],
		G.[Preço 2],
		[Página]
	FROM 
		[Sistema].[dbo].[e-shop] as A
	INNER JOIN ##Bibli_Cor as B
		on A.Cor = B.Codigo
	INNER JOIN ##Bibli_Categ_Prin as C
		on A.[Categoria Principal] = C.Codigo
	INNER JOIN ##Bibli_Modelo as D
		on A.[Fotografia do Modelo] = D.Codigo
	INNER JOIN ##Bibli_Local as E
		on A.[Localização] = E.Codigo
	INNER JOIN ##Bibli_Pais as F
		on A.[País] = F.Codigo
	INNER JOIN ##Bibli_Preco2 as G
		on A.[Preço 2] = G.Codigo
	CROSS JOIN 
		##Determinar_Faixa AS H
),
[Removendo_Paises]
AS (
	SELECT * FROM Shop_Loja
	WHERE [País] NOT IN ('.biz', '.com', '.int', '.net', '.org', 'Indefinido')
),
[Mes_Pt]
AS(
	SELECT
	[ID Sessão], [Clique], 
	CASE 
		WHEN [Mês] = 'April' THEN 'Abril'
		WHEN [Mês] = 'August' THEN 'Agosto'
		WHEN [Mês] = 'July' THEN 'Julho'
		WHEN [Mês] = 'June' THEN 'Junho'
		WHEN [Mês] = 'May' THEN 'Maio'
		ELSE [Mês]
	END AS [Mês], 
	[Dia], [País], [Continente], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom], [Localização], 
	[Fotografia do Modelo], [Preço (US)], [Faixa de Preço], [Preço 2], [Página]
	FROM [Removendo_Paises]
)
SELECT *
INTO [Sistema].[dbo].[Shop_Loja]
FROM Mes_Pt 
GO 

-- Verificar ao longo dos dias a constancia de clicks

UPDATE [Sistema].[dbo].[Shop_Loja]
SET [Modelo de Roupa] = 'A18c'
WHERE [Categoria Principal] = 'calça' AND [Modelo de Roupa] = 'A18';


-- 3.2) Tabela Shop_Loja simplificado
SELECT [Continente], [Categoria Principal], 
	   [Tom], [Localização], [Fotografia do Modelo], 
	   [Faixa de Preço], [Preço 2], [Página], COUNT(*) AS [Total de Cliques]
FROM [Sistema].[dbo].[Shop_Loja]
GROUP BY [Continente], [Categoria Principal], 
	   [Tom], [Localização], [Fotografia do Modelo], 
	   [Faixa de Preço], [Preço 2], [Página]
ORDER BY COUNT(*) DESC

-- 3.3) Tabela Shop_Loja Completa
SELECT [ID Sessão], [Clique], [Continente], [Categoria Principal], 
	   [Tom], [Localização], [Fotografia do Modelo], 
	   [Faixa de Preço], [Preço 2], [Página]
FROM [Sistema].[dbo].[Shop_Loja]
ORDER BY [ID Sessão]

-- 3.4) Tabela Shop_Loja Original
SELECT [ID Sessão], [Clique], [País], [Categoria Principal], 
	   [Cor], [Localização], [Fotografia do Modelo], 
	   [Preço (US)], [Preço 2], [Página]
FROM [Sistema].[dbo].[Shop_Loja]
ORDER BY [ID Sessão]

SELECT * FROM [Sistema].[dbo].[Shop_Loja]

--------------------------------------

SELECT * FROM Shop_Loja

SELECT [ID Sessão], [País], [Categoria Principal], [Cor], [Localização], 
	   [Fotografia do Modelo], [Faixa de Preço], [Preço 2], [Página]
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
	[ID Sessão],
	[Modelo de Roupa],
	Clique, 
	[Localização], 
	[Página] 
INTO 
	[Sistema].[dbo].[Loja_Navegacao] 
FROM 
	[Sistema].[dbo].[Shop_Loja];
GO
