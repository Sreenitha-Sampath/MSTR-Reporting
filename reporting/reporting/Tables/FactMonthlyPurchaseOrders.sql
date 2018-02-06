CREATE TABLE [dbo].[FactMonthlyPurchaseOrders]
(
	[LocationId] INT NOT NULL, 
    [VendorId] INT NOT NULL, 
	[MonthId] INT NOT NULL,
    [PurchaseAmount] MONEY NOT NULL,
    [OrderCount] INT NOT NULL, 
	CONSTRAINT PK_FactMonthlyPurchaseOrders_LocationId_VendorId_MonthId PRIMARY KEY CLUSTERED ([LocationId],[VendorId],[MonthId]),
	CONSTRAINT [FK_FactMonthlyPurchaseOrders_DimLocation_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [DimLocation]([LocationId]),
	CONSTRAINT [FK_FactMonthlyPurchaseOrders_DimVendor_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [DimVendor]([VendorId]),
	CONSTRAINT [FK_FactMonthlyPurchaseOrders_DimMonth_MonthId] FOREIGN KEY ([MonthId]) REFERENCES [DimMonth]([MonthId])
)
