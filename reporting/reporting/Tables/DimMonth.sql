CREATE TABLE [dbo].[DimMonth]
(
	[MonthId] INT NOT NULL, 
    [MonthName] VARCHAR(20) NOT NULL,
	[Year] INT NOT NULL,
	CONSTRAINT PK_DimMonth_MonthId PRIMARY KEY CLUSTERED ([MonthId])
)
