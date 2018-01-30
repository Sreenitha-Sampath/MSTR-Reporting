CREATE TABLE [dbo].[DimVendor]
(
	[VendorId] INT NOT NULL,
	[VendorName] nvarchar(50) NOT NULL,
	CONSTRAINT PK_DimVendor_VendorId PRIMARY KEY CLUSTERED ([VendorId])
)
