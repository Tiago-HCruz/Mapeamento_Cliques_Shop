/*=====================================*/
/* Analise basicas da tabela Shop_Loja */
/*=====================================*/

/*=== Tabela Temporaria ===*/

-- Quantidades de cliques unicos no dia no intervalo dos meses
DROP TABLE IF EXISTS ##Cliques_Unicos

SELECT DISTINCT [Mês], [Dia], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom] 
INTO ##Cliques_Unicos
FROM [Sistema].[dbo].[Shop_Loja] 
ORDER BY [Mês], [Dia], [Modelo de Roupa]

SELECT * FROM ##Cliques_Unicos;
GO

/*== Analises ==*/
-- Quantidades de dias
SET NOCOUNT ON;
DECLARE @Quant_Dias INT
SET @Quant_Dias = (
	SELECT COUNT(*) AS Dias
	FROM (SELECT DISTINCT [Mês], [Dia] FROM [Sistema].[dbo].[Shop_Loja]) sub
)
SELECT @Quant_Dias;
PRINT 'Quantidade de dias: ' + CAST(@Quant_Dias AS VARCHAR(50))
SET NOCOUNT OFF;	
GO

-- Quantidades de cliques unicos no dia no intervalo dos meses
WITH Rem_dup([Mês], [Dia], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom]) 
AS(
	SELECT DISTINCT [Mês], [Dia], [Categoria Principal], [Modelo de Roupa], [Cor], [Tom] 
	FROM [Sistema].[dbo].[Shop_Loja] 
	--ORDER BY [Mês], [Dia], [Modelo de Roupa]
)
SELECT [Modelo de Roupa], [Categoria Principal], [Cor], [Tom], COUNT(*) AS Quantidade 
FROM Rem_dup
GROUP BY [Modelo de Roupa], [Categoria Principal], [Cor], [Tom]
ORDER BY [Modelo de Roupa]
GO

-- Quantidades de Produtos disponiveis
SELECT [Categoria Principal], COUNT(*) AS Quantidade
FROM ##Cliques_Unicos
GROUP BY [Categoria Principal];
GO

-- 
SELECT Tom, COUNT(*) AS Quantidade
FROM ##Cliques_Unicos
GROUP BY Tom;
GO
