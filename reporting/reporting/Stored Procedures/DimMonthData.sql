

CREATE PROCEDURE [dbo].[DimMonthData]

AS
BEGIN
	
	DECLARE @StartDate date= '20100101'

	WHILE @StartDate <= '20151231'
		BEGIN
			INSERT INTO dbo.DimMonth
			(
				MonthId, MonthName, Year
			)
			VALUES ( CAST ( CAST( YEAR(@StartDate) AS VARCHAR(10) ) + CAST( MONTH(@StartDate) AS VARCHAR(10) ) AS INT), 
			DATENAME( month , DateAdd( month , MONTH(@StartDate) , 0 ) - 1 ), YEAR(@StartDate) )
			SET @StartDate = DATEADD(MM, 1, @StartDate)
		END
	RETURN 0
END