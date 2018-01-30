CREATE TABLE [dbo].[DimLocation]
(
	[LocationId] INT NOT NULL,
	[LocationName] nvarchar(50) NOT NULL,
	CONSTRAINT PK_DimLocation_LocationId PRIMARY KEY CLUSTERED ([LocationId])
)
