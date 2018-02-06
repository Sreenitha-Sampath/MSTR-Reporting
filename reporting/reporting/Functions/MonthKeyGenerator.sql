CREATE FUNCTION [dbo].[MonthKeyGenerator] (@Date DATETIME)
RETURNS INT
AS
BEGIN
	DECLARE @MonthKey INT;
	SET @MonthKey=    (cast((year(@Date)) AS VARCHAR(4)) + 
		( CASE
			WHEN 
				LEN(month(@Date)) < 2 THEN '0' + cast(month(@Date) AS VARCHAR(2))
			ELSE 
				CAST(month(@Date) AS VARCHAR(2))
		  END )
		)       
	RETURN(@MonthKey)
END
