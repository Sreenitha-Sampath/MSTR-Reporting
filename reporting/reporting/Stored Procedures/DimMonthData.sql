CREATE PROCEDURE [dbo].[DimMonthData]
AS
BEGIN
	DECLARE @StartDate date= '20100101'
	DECLARE @monthKey INT
	WHILE @StartDate <= '20151231'
	BEGIN
		SET @monthKey=    [dbo].[MonthKeyGenerator] (@StartDate)
		INSERT INTO dbo.DimMonth
		(
			MonthId, MonthName, Year
		)
		VALUES ( CAST(@monthKey AS INT), 
		DATENAME( month , DATEADD( month , MONTH(@StartDate) , 0 ) - 1 ), YEAR(@StartDate) )
		SET @StartDate = DATEADD(MM, 1, @StartDate)
	END
	RETURN 0
END