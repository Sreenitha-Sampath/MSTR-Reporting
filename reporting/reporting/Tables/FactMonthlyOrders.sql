CREATE TABLE [dbo].[FactMonthlyOrders]
(
	[LocationId] INT NOT NULL, 
    [VendorId] INT NOT NULL, 
	[Month] INT NOT NULL, 
    [PurchaseAmount] MONEY NOT NULL,
    [OrderCount] INT NOT NULL, 
	CONSTRAINT PK_FactMonthlyOrders_LocationId_VendorId_Month PRIMARY KEY CLUSTERED ([LocationId],[VendorId],[Month]),
	CONSTRAINT [FK_FactMonthlyOrders_Location_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [DimLocation]([LocationId]),
	CONSTRAINT [FK_FactMonthlyOrders_Vendor_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [DimVendor]([VendorId])
)
