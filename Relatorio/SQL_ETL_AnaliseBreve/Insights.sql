/*========*/
/* Insght */
/*========*/

/*=== Tabelas Temporarias ===*/

-- Cliques por Paises
DROP TABLE IF EXISTS ##Paises_Cliques;

SELECT [Pa�s],  COUNT(*) as Quantidade
INTO ##Paises_Cliques
FROM [Sistema].[dbo].[Shop_Loja]
GROUP BY [Pa�s];

SELECT * FROM ##Paises_Cliques
ORDER BY [Quantidade] DESC;
GO

-- Quantidades de cliques unicos no dia no intervalo dos meses
DROP TABLE IF EXISTS ##Cliques_Unicos

SELECT DISTINCT [M�s], [Dia], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom] 
INTO ##Cliques_Unicos
FROM [Sistema].[dbo].[Shop_Loja] 
ORDER BY [M�s], [Dia], [Modelo de Roupa]

SELECT * FROM ##Cliques_Unicos;
GO

/*=== Investigando Insghts ===*/

-- Quantidade de Categoria do Produtos por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_CP_cliques([Pa�s], [Categoria Principal], Quantidade)
AS	(
	SELECT [Pa�s], [Categoria Principal], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [Pa�s], [Categoria Principal]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Paises_CP_cliques
)
SELECT [Pa�s], [Categoria Principal], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[Pa�s] = B.[Pa�s]
ORDER BY [Pa�s] ,[Quantidade] DESC;
GO

-- Quantidade de Faixa de Pre�o por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_FP_cliques([Pa�s], [Faixa de Pre�o], Quantidade)
AS	(
	SELECT [Pa�s], [Faixa de Pre�o], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [Pa�s], [Faixa de Pre�o]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Paises_FP_cliques
)
SELECT [Pa�s], [Faixa de Pre�o], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[Pa�s] = B.[Pa�s]
ORDER BY [Pa�s] ,[Quantidade] DESC;
GO

-- Quantidade de Pre�o de mercado por pais
DROP TABLE IF EXISTS [Sistema].[dbo].[Cliques_paises_categoria_produto];
;WITH Paises_PM_cliques([Pa�s], [Pre�o 2], Quantidade)
AS	(
	SELECT [Pa�s], [Pre�o 2], COUNT(*) as Quantidade	
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [Pa�s], [Pre�o 2]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Paises_PM_cliques
)
SELECT [Pa�s], [Pre�o 2], Quantidade
FROM [Rank]
WHERE R = 1
--INNER JOIN  ##Paises_Cliques AS B ON A.[Pa�s] = B.[Pa�s]
ORDER BY [Pa�s] ,[Quantidade] DESC;
GO


--=== Mensal ===--
-- Verificar por paises ao mes, vategoria de produtos mais vendidos
;WITH Maximo_cliques([M�s], [Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor], Quantidade)
AS
(
	SELECT [M�s], [Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja] 
	GROUP BY [M�s], [Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [M�s], [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Maximo_cliques
)
SELECT	[M�s],
		[Pa�s], 
		[Categoria Principal], 
		[Modelo de Roupa], 
		Cor, 
		Quantidade
FROM [Rank]
WHERE R = 1
ORDER BY [Pa�s], [M�s], Quantidade DESC;
GO

--== Produto mais destacado ==--
;WITH Maximo_cliques([Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor], Quantidade)
AS
(
	SELECT [Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [Pa�s], [Categoria Principal], [Modelo de Roupa], [Cor]
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Maximo_cliques
)
SELECT  [Pa�s], [Modelo de Roupa], [Categoria Principal], Cor, Quantidade
FROM [Rank]
WHERE R = 1
ORDER BY [Pa�s], Quantidade DESC; 
GO

-- Mapeamento das Navega��o por P�gina e Pais-- 
;WITH Pais_Cliques([Pa�s], [Localiza��o], [P�gina], Quantidade)
AS
(
	SELECT [Pa�s], [Localiza��o], [P�gina], COUNT(*) AS Quantidade
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY  [Pa�s], [Localiza��o], [P�gina]
),
[Pivot]
AS 
(
	SELECT  *
	FROM [Pais_Cliques] 
		PIVOT(
		SUM(Quantidade)
		FOR [P�gina] IN([1],[2],[3],[4],[5])
		) PvtTable
),
[Renomear]
AS(
SELECT
	[Pa�s], 
	[Localiza��o], 
	COALESCE([1], 0) AS [P�gina 1],
	COALESCE([2], 0) AS [P�gina 2],
	COALESCE([3], 0) AS [P�gina 3],
	COALESCE([4], 0) AS [P�gina 4],
	COALESCE([5], 0) AS [P�gina 5]
FROM [Pivot])
SELECT * FROM Renomear
ORDER BY /*[Pa�s],*/ [Localiza��o];
GO

-- Destaques para cada pais
WITH Destaques([Pa�s],[Categoria Principal], [Pre�o 2], [Faixa de Pre�o], Quantidade)
AS
(
	SELECT [Pa�s],[Categoria Principal], [Pre�o 2], [Faixa de Pre�o], COUNT(*) AS [Quantidade]
	FROM [Sistema].[dbo].[Shop_Loja]
	GROUP BY [Pa�s],[Categoria Principal], [Pre�o 2], [Faixa de Pre�o] 
),
[Rank] 
AS (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY [Pa�s] ORDER BY Quantidade DESC) AS R
    FROM Destaques
)
SELECT [Pa�s],[Categoria Principal], [Pre�o 2], [Faixa de Pre�o], Quantidade 
FROM [Rank]
WHERE R = 1
GO
