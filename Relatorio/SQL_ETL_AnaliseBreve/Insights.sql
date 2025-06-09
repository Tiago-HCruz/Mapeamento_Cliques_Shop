/*========*/
/* Insght */
/*========*/

/*=== Tabelas Temporarias ===*/

-- Cliques por Paises
DROP TABLE IF EXISTS ##Paises_Cliques;

SELECT [País],  COUNT(*) as Quantidade
INTO ##Paises_Cliques
FROM [Sistema].[dbo].[Shop_Loja]
GROUP BY [País];

SELECT * FROM ##Paises_Cliques
ORDER BY [Quantidade] DESC;
GO

-- Quantidades de cliques unicos no dia no intervalo dos meses
DROP TABLE IF EXISTS ##Cliques_Unicos

SELECT DISTINCT [Mês], [Dia], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom] 
INTO ##Cliques_Unicos
FROM [Sistema].[dbo].[Shop_Loja] 
ORDER BY [Mês], [Dia], [Modelo de Roupa]

SELECT * FROM ##Cliques_Unicos;
GO

/*=== Investigando Insghts ===*/

-- Quantidade de Categoria do Produtos por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_CP_cliques([País], [Categoria Principal], Quantidade)
AS	(
	SELECT [País], [Categoria Principal], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [País], [Categoria Principal]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [País] ORDER BY Quantidade DESC) AS R
    FROM Paises_CP_cliques
)
SELECT [País], [Categoria Principal], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[País] = B.[País]
ORDER BY [País] ,[Quantidade] DESC;
GO

-- Quantidade de Faixa de Preço por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_FP_cliques([País], [Faixa de Preço], Quantidade)
AS	(
	SELECT [País], [Faixa de Preço], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [País], [Faixa de Preço]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [País] ORDER BY Quantidade DESC) AS R
    FROM Paises_FP_cliques
)
SELECT [País], [Faixa de Preço], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[País] = B.[País]
ORDER BY [País] ,[Quantidade] DESC;
GO

-- Quantidade de Preço de mercado por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_PM_cliques([País], [Preço 2], Quantidade)
AS	(
	SELECT [País], [Preço 2], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [País], [Preço 2]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [País] ORDER BY Quantidade DESC) AS R
    FROM Paises_PM_cliques
)
SELECT [País], [Preço 2], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[País] = B.[País]
ORDER BY [País] ,[Quantidade] DESC;
GO


--=== Mensal ===--
-- Verificar por paises ao mes, vategoria de produtos mais vendidos
;WITH Maximo_cliques([Mês], [País], [Categoria Principal], [Modelo de Roupa], [Cor], Quantidade)
AS
(
	SELECT [Mês], [País], [Categoria Principal], [Modelo de Roupa], [Cor], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja] 
	GROUP BY [Mês], [País], [Categoria Principal], [Modelo de Roupa], [Cor]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Mês], [País] ORDER BY Quantidade DESC) AS R
    FROM Maximo_cliques
)
SELECT	[Mês],
		[País], 
		[Categoria Principal], 
		[Modelo de Roupa], 
		Cor, 
		Quantidade
FROM [Rank]
WHERE R = 1
ORDER BY [País], [Mês], Quantidade DESC;
GO

--== Produto mais destacado ==--
;WITH Maximo_cliques([País], [Categoria Principal], [Modelo de Roupa], [Cor], Quantidade)
AS
(
	SELECT [País], [Categoria Principal], [Modelo de Roupa], [Cor], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [País], [Categoria Principal], [Modelo de Roupa], [Cor]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [País] ORDER BY Quantidade DESC) AS R
    FROM Maximo_cliques
)
SELECT  [País], [Modelo de Roupa], [Categoria Principal], Cor, Quantidade
FROM [Rank]
WHERE R = 1
ORDER BY [País], Quantidade DESC; 
GO

-- Mapeamento das Navegação por Página e Pais-- 
;WITH Pais_Cliques([País], [Localização], [Página], Quantidade)
AS
(
	SELECT [País], [Localização], [Página], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY  [País], [Localização], [Página]
),
[Pivot]
AS 
(
	SELECT  *
	FROM [Pais_Cliques] 
		PIVOT(
		SUM(Quantidade)
		FOR [Página] IN([1],[2],[3],[4],[5])
		) PvtTable
),
[Renomear]
AS(
SELECT
	[País], 
	[Localização], 
	COALESCE([1], 0) AS [Página 1],
	COALESCE([2], 0) AS [Página 2],
	COALESCE([3], 0) AS [Página 3],
	COALESCE([4], 0) AS [Página 4],
	COALESCE([5], 0) AS [Página 5]
FROM [Pivot])
SELECT * FROM Renomear
ORDER BY /*[País],*/ [Localização];
GO

-- Destaques para cada pais
WITH Destaques([País],[Categoria Principal], [Preço 2], [Faixa de Preço], Quantidade)
AS
(
	SELECT [País],[Categoria Principal], [Preço 2], [Faixa de Preço], COUNT(*) AS [Quantidade]
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [País],[Categoria Principal], [Preço 2], [Faixa de Preço] 
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [País] ORDER BY Quantidade DESC) AS R
    FROM Destaques
)
SELECT [País],[Categoria Principal], [Preço 2], [Faixa de Preço], Quantidade 
FROM [Rank]
WHERE R = 1
GO
